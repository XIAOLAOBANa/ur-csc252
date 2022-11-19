#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>
#include <signal.h>
#include <string.h>
#include <time.h>
#include <sys/wait.h>

#define MEM_LIM 64*1024*1024 // 最大虚拟内存为64MB

/********************************************************************************************************************************/
// // main参数
// int main(int argc, char *argv[])
// {
//     if(argc == 1) 
// 	{
// 		fprintf(stderr, "Usage: %s /path/to/program args...\n", argv[0]);
// 		exit(1);
// 	}

//     printf("%d\n", argc);
//     for(int i=1; i<argc; i++)
//     {
//         printf("arg%d: %s\n", i, argv[i]);
//     }
// }


/********************************************************************************************************************************/
// fork()
// 程序在执行到fork的时候克隆出了子进程，子进程具有当前进程的一切资源。
// 子进程从fork开始执行，不执行fork前面的代码。
// 父子进程可通过进程间通信交换数据

// 返回值：对于父进程，返回值是其子进程id；对子进程，返回值是0.

// int main(void)
// {
//     int i = 0;
//     printf("i son/pa ppid  pid   fpid\n");
//     //ppid指当前进程的父进程pid
//     //pid指当前进程的pid,
//     //fpid指fork返回给当前进程的值

//     for (i = 0; i < 2; i++)
//     {
//         pid_t fpid = fork();
//         if (fpid == 0)
//             printf("%d child  %4d %4d %4d\n", i, getppid(), getpid(), fpid);          
//         else
//             printf("%d parent %4d %4d %4d\n", i, getppid(), getpid(), fpid);       
//     }
//     // pid_t fpid = fork();
//     // if (fpid == 0)
//     //     printf("%d child  %4d %4d %4d\n", i, getppid(), getpid(), fpid);
//     // else
//     //     printf("%d parent %4d %4d %4d\n", i, getppid(), getpid(), fpid);

//     return 0;
// }

/********************************************************************************************************************************/
// execve
// int execve(const char *filename, char *const argv[], char *const envp[]); 
// 执行shell脚本，或者是调用其他的程序(可执行)
// filename:待执行文件路径
// char *argv[]：参数，最后一个元素必为NULL
// char *const envp[]：键值对参数，最后一个元素必为NULL

// int main(int argc, char **argv)
// {
//     char **newargv = &argv[1];
//     newargv[argc-1] = NULL;
//     char *newenviron[] = { NULL };
//     execve(argv[1], newargv, newenviron);

//     // char *newargv[]={"/bin/ls","-al","/", NULL};
//     // char *envp[]={0,NULL}; //传递给执行文件新的环境变量数组
//     // execve("/bin/ls", newargv,envp);

// }

// waitpid()
// pid_t waitpid(pid_t pid, int * status, int options);
// pid: 等待的子进程id
// status: 传回来的值
//     正常返回：
//         WIFEXITED(status)：如果子进程正常结束则为非0值.
//         WEXITSTATUS(status)：取得子进程exit()返回的结束代码, 一般会先用WIFEXITED 来判断是否正常结束才能使用此宏.
//     因信号中断：
//         WIFSIGNALED(status)：如果子进程是因为信号而结束则此宏值为真
//         WTERMSIG(status)：取得子进程因信号而中止的信号代码, 一般会先用WIFSIGNALED 来判断后才使用此宏.
//     与WUNTRACED联动：
//         WIFSTOPPED(status)：如果子进程处于暂停执行情况则此宏值为真. 一般只有使用WUNTRACED时才会有此情况.
//         WSTOPSIG(status)：取得引发子进程暂停的信号代码, 一般会先用WIFSTOPPED 来判断后才使用此宏.
// options：
//     WNOHANG：如果没有任何已经结束的子进程则马上返回, 不予以等待.
//     WUNTRACED：如果子进程进入暂停执行情况则马上返回, 但结束状态不予以理会. 子进程的结束状态返回后存于status,

// int main(void)
// {
//     int i = 0;
//     printf("i son/pa ppid  pid   fpid\n");
//     //ppid指当前进程的父进程pid
//     //pid指当前进程的pid,
//     //fpid指fork返回给当前进程的值

//     pid_t fpid = fork();
//     if (fpid == 0)
//     {
//         printf("%d child  %4d %4d %4d\n", i, getppid(), getpid(), fpid);
//         exit(66);
//     }  
//     else
//     {
//         printf("%d parent %4d %4d %4d\n", i, getppid(), getpid(), fpid);
//         int wstatus;
//         waitpid(fpid, &wstatus, 0);
//         if(WIFEXITED(wstatus))
//             printf("normal termination. return value: %d\n", WEXITSTATUS(wstatus));
//     }
//     return 0;
// }


/********************************************************************************************************************************/
// signal与sigaction类似的效果，后者功能更丰富
// 遇到sig信号就去执行func函数
// void (int) * signal(int sig, void (int) * func);

// sig:
//     SIGINT:程序终止(interrupt)信号, 在用户键入INTR字符(通常是Ctrl-C)时发出，用于通知前台进程组终止进程
//     SIGALRM:时钟定时信号, 计算的是实际的时间或时钟时间
//     SIGXCPU:超过CPU时间资源限制. 这个限制可以由getrlimit/setrlimit来读取/改变。
//     ...

// * func:执行函数地址
//     SIG_IGN: 忽略该信号
//     SIG_DFL: 系统默认处理
//     人为定义



/********************************************************************************************************************************/
// setitimer

// int setitimer(int which,
//               const struct itimerval *new_value,
//               struct itimerval *old_value);

// which:
//     ITIMER_REAL : 设置定时器以系统真实所花费的时间来计时，运行指定时间后发送SIGALRM信号。

//     ITIMER_VIRTUAL : 设置进程在用户空间中执行时，时间计数减少。运行指定时间后发送SIGVTALRM信号

//     ITIMER_PROF : 设置进程在内核空间中执行时，时间计数减少。运行指定时间后发送SIGPROF信号。

// *new_value:用来对定时器的定时时间进行设置

// struct timeval
// {
//     time_t      tv_sec;      /* 秒 */
//     suseconds_t tv_usec;     /* 微秒 */
// };
 
// struct itimerval
// {
//     struct timeval it_value;    /* 首次产生定时器信号的时间 */
//     struct timeval it_interval; /* 再次产生定时器信号的时间 */
// };

// *old_value:存储上一次setitimer调用时设置的new_value。一般没用，设成NULL




// void sigHandler(int sig)
// {
// 	printf("[%d] caught signal : #%d: %s\n",time(NULL), sig, strsignal(sig));
//     exit(1);
// }

 
// int main()
// {
// 	// 打印开始的时间戳
// 	printf("[%d] start\n",time(NULL));
	
// 	// 注册SIGALRM信号处理函数，setitimer函数会不停的发送SIGALRM 信号
	
//     // signal(SIGALRM, sigHandler);
// 	struct itimerval it;
	
// 	// 首次发送SIGALRM信号：3s后
// 	it.it_value.tv_sec = 3;
// 	it.it_value.tv_usec = 0;

// 	// 之后每1s发送一次SIGALRM 信号
// 	it.it_interval.tv_sec = 1;
// 	it.it_interval.tv_usec = 0;
	
// 	setitimer(ITIMER_REAL,&it,NULL);
//     signal(SIGALRM, sigHandler);
	
// 	while(1);
	
// 	return 0;
// }


// void sigHandler(int sig)
// {
// 	printf("[%d] caught signal : #%d: %s\n",time(NULL), sig, strsignal(sig));
//     exit(1);
// }

 
/********************************************************************************************************************************/
//综合运用
int main(void)
{
    pid_t fpid = fork();
    if (fpid == 0)
    {
        printf("%d child  %4d %4d %4d\n", i, getppid(), getpid(), fpid);
        sleep(10);
        exit(66);
    }  
    else
    {
        printf("%d parent %4d %4d %4d\n", i, getppid(), getpid(), fpid);
        int wstatus;
        sleep(1);
        kill(fpid, SIGALRM);
        waitpid(fpid, &wstatus, 0);
        if(WIFEXITED(wstatus);)
            printf("normal termination. return value: %d\n", WEXITSTATUS(wstatus));
        else if (WIFSIGNALED(wstatus))
        {
            printf("child %d receive signal %d\n", fpid, WTERMSIG(wstatus));
        }
    }
    return 0;
}

/********************************************************************************************************************************/
// setrlimit and getrlimit
// Use the Linux system calls setrlimit and getrlimit to set limits on memory, file size, and CPU time. 
// Note, these limits should only apply to the confined process, not confine itself.

// setrlimit(resource type, limit);
// resource type:
// RLIMIT_AS //进程的最大虚拟内存空间，字节为单位，向下舍入为系统页面大小。影响对brk(2)，mmap(2)和mremap(2)的调用，这些调用在超出此限制时会失败，并显示错误ENOMEM。
// RLIMIT_CPU //最大允许的CPU使用时间，秒为单位。当进程达到软限制，内核将给其发送SIGXCPU信号，这一信号的默认行为是终止进程的执行。然而，可以捕捉信号，处理句柄可将控制返回给主程序。如果进程继续耗费CPU时间，核心会以每秒一次的频率给其发送SIGXCPU信号，直到达到硬限制，那时将给进程发送 SIGKILL信号终止其执行。
// RLIMIT_FSIZE //进程可建立的文件的最大长度。如果进程试图超出这一限制时，核心会给其发送SIGXFSZ信号，默认情况下将终止进程的执行。


// struct rlimit {
//     rlim_t rlim_cur;  /* Soft limit */
//     rlim_t rlim_max;  /* Hard limit (ceiling for rlim_cur) */
// };

// eg:
// struct rlimit limit;
// limit.rlim_cur = RLIM_INFINITY; //软限制，表示对资源没有限制
// limit.rlim_max = RLIM_INFINITY; //硬限制，这个参数表示对资源没有限制，一定要大于等于rlim_cur值
// setrlimit(RLIMIT_AS, &limit)