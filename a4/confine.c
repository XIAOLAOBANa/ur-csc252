#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>
#include <signal.h>
#include <time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/resource.h>
#include <string.h>

#define MEM_LIM 64*1024*1024
#define CPU_LIM 60
#define FILESIZE 4*1024*1024

void settime();
void sigHandler(int sig);

int main(int argc, char *argv[]) 
{
	if(argc == 1) 
	{
		fprintf(stderr, "Usage: %s /path/to/program args...\n", argv[0]);
		exit(1);
	}

	pid_t pid = fork();
	settime();
	if (pid == 0)
	{
		/* in child */

		// 1. 设置资源限制
		struct rlimit mem_limit;
		// struct rlimit cpu_limit;
		struct rlimit fileSize_limit;

		mem_limit.rlim_cur = MEM_LIM;
		mem_limit.rlim_max = MEM_LIM;

		// cpu_limit.rlim_cur = CPU_LIM;
		// cpu_limit.rlim_max = CPU_LIM;

		fileSize_limit.rlim_cur = FILESIZE;
		fileSize_limit.rlim_max = FILESIZE;

		setrlimit(RLIMIT_AS, &mem_limit);
		// setrlimit(RLIMIT_CPU, &cpu_limit);
		setrlimit(RLIMIT_FSIZE, &fileSize_limit);


		// 2. 转去执行进程
		char **newargv = &argv[1];
		newargv[argc-1] = NULL;
		char *newenviron[] = { NULL };

		execve(argv[1], newargv, newenviron);
		perror("execve"); /* execve() returns only on error */
		exit(EXIT_FAILURE);

	}
	else// 父进程
	{
		/* in parent */
		signal(SIGALRM, SIG_IGN);
		int i;
		int wstatus;
		waitpid(pid, &wstatus, 0);

		FILE * pf = fopen ("./confine_result.txt", "w");
		if (pf == NULL)
		{
			perror("Failed to open file");
			return 0;
		}
		for(i = 1; i<argc-1; i++)
		{
			fputs(argv[i], pf);
			fputs(" ", pf);
		}
		fputs(argv[i], pf);
		fputs("\n", pf);

		if(WIFEXITED(wstatus))
		{
			printf("normal termination. return value: %d\n", WEXITSTATUS(wstatus));
			if (WEXITSTATUS(wstatus) == 0)
			{
				fputs("NORMAL", pf);
				fclose(pf);
				return 0;
			}
			else
			{
				fputs("TERMINATED", pf);
				fclose(pf);
				return 127;
			}
		}
		else if(WIFSIGNALED(wstatus))
		{
			printf("abnormal termination. return value: %d\n", WTERMSIG(wstatus));
			if(WTERMSIG(wstatus) == 14)
			{
				fputs("TIMEOUT", pf);
				fclose(pf);
				return 127;
			}
			else
			{
				fputs("TERMINATED", pf);
				fclose(pf);
				return 128;
			}
		}
		else
		{
			fputs("TERMINATED", pf);
			fclose(pf);
			return 128;
		}
	}
}

void settime()
{
	struct itimerval itime;

	itime.it_value.tv_sec = 5;
	itime.it_value.tv_usec = 0;

	// it.it_interval.tv_sec = 1;
	// it.it_interval.tv_usec = 0;
	setitimer(ITIMER_REAL, &itime, NULL);
}

