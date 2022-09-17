#include <stdio.h>
#include <stdint.h>


/*
  Check if the number of bits in `word` is even.

  Returns 1 if the number of bits in the word set to 1 is even, 0
  otherwise.

  e.g., using binary representation for word:

  0101 0000 -> should return 1
  0000 0001 -> should return 0
  1111 0000 -> should return 0
*/
int check_even_parity(uint8_t word) {
    int cnt = 0, bit = 1;
    for(int i=0; i<8; i++)
    {
    	if (word & bit)
			cnt++;
		bit *= 2;
    }
	if(cnt % 2)
		return 0;
	return 1;
}

/*
  Set the parity bit to 1 if the number of 1 bits in the lowest 7 bits
  of `word` is odd, otherwise set it to zero.

  The parity bit is the most significant bit. Ignore the value of any
  existing parity bit.

  I.e., `check_even_parity(set_even_parity(word))` should always be 1
  for any `word`.

  e.g.:

  0101 0000 -> should return 0101 0000 (unchanged)
  0000 0001 -> should return 1000 0001 (parity bit is set to 1)
  1111 0000 -> should return 1111 0000 (unchanged,
                                        alternatively the parity bit is set)

*/

uint8_t set_even_parity(uint8_t word) {
	int cnt = 0, bit = 1;
	for(int i=0; i<7; i++)
	{
		if (word & bit)
			cnt++;
		bit *= 2;
	}
	if(cnt%2)
    
		word |= 128;
	else
		word &= 127; 
  	return word; /* change this */
}

/*
  Create a code word with multiple parity bits.

  `v` will always be a value between 0 and 15.

  Assuming the bits of `v` are labeled `v1`, `v2`, `v3` and `v4` from
  least to most significant, compute the parity bits as follows:

    p1 = v1 ^ v2 ^ v4
    p2 = v1 ^ v3 ^ v4
    p3 = v2 ^ v3 ^ v4

  The construct a result code word such that the parity bits and v
  bits are stored in the following bit positions:

  pos  7  6  5  4  3  2  1  0
       0 p3 p2 p1 v4 v3 v2 v1

  Note that the most significant bit is 0.

  e.g. using binary notation:

   0000 -> returns 0000 0000
   1111 -> returns 0111 1111
   0101 -> returns 0101 0101
*/

uint8_t create_mp_code_word(uint8_t v) {
    int v1 = v & 1,
        v2 = (v & 2) >> 1,
        v3 = (v & 4) >> 2,
        v4 = (v & 8) >> 3;

    int p1 = v1 ^ v2 ^ v4,
        p2 = v1 ^ v3 ^ v4,
        p3 = v2 ^ v3 ^ v4;

    p1 = p1 << 4;
    p2 = p2 << 5;
    p3 = p3 << 6;

    v = v | p1 | p2 | p3;
    return v; /* change this */
}

/*
   Check and correct single bit errors in a received code word.

   First, recompute the parity bits as above. Then compare the
   recomputed parity bits to the parity bits in the code word. If two
   or more parity bits differ, use the following table to identify the
   bit that was corrupted, and flip it.

   In the table below `X` marks a parity bit that is different from
   the recomputed version. So if recomputed parity bits `p1` and `p3`
   differ from the ones in `rcw`, flip bit `v2`.

   p1 p2 p3   Corrupt bit
   X  X       v1
   X     X    v2
      X  X    v3
   X  X  X    v4

   If only one parity bit is different, you don't have to do anything
   (think about why).

   Once `rcw` has been corrected, extract and return the lowest 4 bits
   (i.e. a number from 0 to 15).


  e.g.:
   0000 0000 -> 0000
   0111 1111 -> 1111
   0101 0101 -> 0101
   0101 0111 -> 0101  [note single bit error and correction]
   0111 0101 -> 0101  [note single bit error in parity bits]
*/
uint8_t decode(uint8_t rcw) {

    uint8_t code = rcw & 0xf;

    uint8_t ccw = create_mp_code_word(code);

    if((rcw ^ ccw) == 0)
        return code;
    else if ((rcw ^ ccw) == 0x30)
        return code ^ 0x1;
    else if ((rcw ^ ccw) == 0x50)
        return code ^ 0x2;
    else if ((rcw ^ ccw) == 0x60)
        return code ^ 0x4;    
    else if ((rcw ^ ccw) == 0x70)
        return code ^ 0x8;
    else
        return code;
}


/*
  Create a code word that can detect double bit errors as well as
  correct single bit errors.

  This is achieved by first using multiple parity bits as described
  above and then using the most significant bit as parity check for
  the entire code word.

  Use even parity. As before, `v` is a value from 0 to 15. The return
  value should be encoded as follows:

  pos  7  6  5  4  3  2  1  0
       p p3 p2 p1 v4 v3 v2 v1

  Where `p` is parity bit for the whole code word.

  e.g.:
   0000 -> returns 0000 0000
   1111 -> returns 1111 1111
   0101 -> returns 0101 0101
 */

uint8_t create_secded_code_word(uint8_t v) {
    uint8_t mp_code = create_mp_code_word(v);
    int v1 = mp_code & 0x1,
        v2 = (mp_code & 0x2) >> 1,
        v3 = (mp_code & 0x4) >> 2,
        v4 = (mp_code & 0x8) >> 3,
        p1 = (mp_code & 0x10) >> 4,
        p2 = (mp_code & 0x20) >> 5,
        p3 = (mp_code & 0x40) >> 6;
    int p = (p3 ^ p2 ^ p1 ^ v4 ^ v3 ^ v2 ^ v1) << 7;
    int secded_code = mp_code | p;
    return secded_code; /* change this */
}

/*
   Check and correct single bit errors in a received code word, while
   also detecting double bit errors.

   Return a value between 0 to 15 if no double bit errors were
   detected, correcting any single bit errors as described above.

   Return 255 if a double bit error was detected.

   e.g.:

   0000 0000 -> 0000
   1111 1111 -> 1111
   0101 0101 -> 0101
   0101 0111 -> 0101       [single bit error]
   1101 1101 -> 1111 1111  [double bit error]
*/
uint8_t decode_secded(uint8_t rcw) {
    uint8_t word = rcw & 0xf;
    uint8_t w = create_secded_code_word(word);
    int flag = rcw ^ w;
    if ( flag == 0x0 || flag == 0x10 || flag == 0x20 || flag == 0x40 || flag == 0x80)
        return word;
    else if (flag == 0xB0)
        return word ^ 0x01;
    else if (flag == 0xD0)
        return word ^ 0x02;
    else if (flag == 0xE0)
        return word ^ 0x04;
    else if (flag == 0x70)
        return word ^ 0x08;
    else
        return 255;   
    
}


/* THE MAIN AND TEST FUNCTIONS BELOW ARE FOR YOUR CONVENIENCE AND ARE
   NOT PART OF THIS ASSIGNMENT. NOTE THE TESTS ARE NOT EXHAUSTIVE.
*/

void check_equality(uint8_t a, uint8_t b, const char *fn) {
  printf("%s: %s: Checking %u == %u\n", a == b ? "PASS" : "FAIL", fn, a, b);
}

void check_equality_hex(uint8_t a, uint8_t b, const char *fn) {
  printf("%s: %s: Checking 0x%x == 0x%x\n", a == b ? "PASS" : "FAIL", fn, a, b);
}

void test_check_even_parity() {
  uint8_t v;

  check_equality(check_even_parity(0x0), 1, "check_even_parity(0x0)");
  check_equality(check_even_parity(0x1f), 0, "check_even_parity(0x1f)");
  check_equality(check_even_parity(0x80), 0, "check_even_parity(0x80)");
}

void test_set_even_parity() {
  uint8_t v;
  const uint8_t PB = 0x80;

  v = set_even_parity(0x80);
  check_equality((v & PB) >> 7, 0, "set_even_parity(0x80)");

  v = set_even_parity(0x1f);
  check_equality((v & PB) >> 7, 1, "set_even_parity(0x1f)");

  v = set_even_parity(0x0);
  check_equality((v & PB) >> 7, 0, "set_even_parity(0x0)");
}

void test_create_mp_code_word() {
  uint8_t v;

  v = create_mp_code_word(0);
  check_equality_hex(v, 0, "create_mp_code_word(0)");

  v = create_mp_code_word(15);
  check_equality_hex(v, 0x7f, "create_mp_code_word(15)");

  v = create_mp_code_word(5);
  check_equality_hex(v, 0x55, "create_mp_code_word(5)");

}

void test_decode() {
  uint8_t cw;

  cw = 0x7f;    // no errors
  check_equality(decode(cw), 15, "decode(0x7f)");

  cw = 0x7f & ~0x2; // error in one value bit
  check_equality(decode(cw), 15, "decode(0x7d)");

  cw = 0x7f & ~0x1; // error in one value bit
  check_equality(decode(cw), 15, "decode(0x7e)");

  cw = 0x7f & ~0x10; // error in one parity bit
  check_equality(decode(cw), 15, "decode(0x6f)");
}

void test_create_secded_code_word() {
  uint8_t v;

  v = create_secded_code_word(0);
  check_equality_hex(v, 0, "create_secded_code_word(0)");

  v = create_secded_code_word(15);
  check_equality_hex(v, 0xff, "create_secded_code_word(15)");
}

void test_decode_secded() {
  uint8_t v;

  v = decode_secded(0);
  check_equality_hex(v, 0, "decode_secded(0)");

  v = decode_secded(0xff);
  check_equality_hex(v, 15, "decode_secded(0xff)");

  v = decode_secded(0xff & ~0x1); // flip one bit
  check_equality_hex(v, 15, "decode_secded(0xff)");

  v = decode_secded(0xff & ~0x3); // flip two bits
  check_equality_hex(v, 255, "decode_secded(0xfc)");

  v = decode_secded(0xdd); // double bit error
  check_equality_hex(v, 255, "decode_secded(0xdd)");

}

int main(void) {
  test_check_even_parity();
  test_set_even_parity();
  test_create_mp_code_word();
  test_decode();
  test_create_secded_code_word();
  test_decode_secded();
}
