
#line 1 "SourceCode.c" /0
  
#line 1 "C:\Keil_v5\C51\Inc\reg51.h" /0






 
 
 
 
 
 
 sfr P0   = 0x80;
 sfr P1   = 0x90;
 sfr P2   = 0xA0;
 sfr P3   = 0xB0;
 sfr PSW  = 0xD0;
 sfr ACC  = 0xE0;
 sfr B    = 0xF0;
 sfr SP   = 0x81;
 sfr DPL  = 0x82;
 sfr DPH  = 0x83;
 sfr PCON = 0x87;
 sfr TCON = 0x88;
 sfr TMOD = 0x89;
 sfr TL0  = 0x8A;
 sfr TL1  = 0x8B;
 sfr TH0  = 0x8C;
 sfr TH1  = 0x8D;
 sfr IE   = 0xA8;
 sfr IP   = 0xB8;
 sfr SCON = 0x98;
 sfr SBUF = 0x99;
 
 
 
 
 sbit CY   = 0xD7;
 sbit AC   = 0xD6;
 sbit F0   = 0xD5;
 sbit RS1  = 0xD4;
 sbit RS0  = 0xD3;
 sbit OV   = 0xD2;
 sbit P    = 0xD0;
 
 
 sbit TF1  = 0x8F;
 sbit TR1  = 0x8E;
 sbit TF0  = 0x8D;
 sbit TR0  = 0x8C;
 sbit IE1  = 0x8B;
 sbit IT1  = 0x8A;
 sbit IE0  = 0x89;
 sbit IT0  = 0x88;
 
 
 sbit EA   = 0xAF;
 sbit ES   = 0xAC;
 sbit ET1  = 0xAB;
 sbit EX1  = 0xAA;
 sbit ET0  = 0xA9;
 sbit EX0  = 0xA8;
 
 
 sbit PS   = 0xBC;
 sbit PT1  = 0xBB;
 sbit PX1  = 0xBA;
 sbit PT0  = 0xB9;
 sbit PX0  = 0xB8;
 
 
 sbit RD   = 0xB7;
 sbit WR   = 0xB6;
 sbit T1   = 0xB5;
 sbit T0   = 0xB4;
 sbit INT1 = 0xB3;
 sbit INT0 = 0xB2;
 sbit TXD  = 0xB1;
 sbit RXD  = 0xB0;
 
 
 sbit SM0  = 0x9F;
 sbit SM1  = 0x9E;
 sbit SM2  = 0x9D;
 sbit REN  = 0x9C;
 sbit TB8  = 0x9B;
 sbit RB8  = 0x9A;
 sbit TI   = 0x99;
 sbit RI   = 0x98;
 
 
#line 1 "SourceCode.c" /0
 
  
#line 1 "C:\Keil_v5\C51\Inc\stdio.h" /0






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 #pragma SAVE
 #pragma REGPARMS
 extern char _getkey (void);
 extern char getchar (void);
 extern char ungetchar (char);
 extern char putchar (char);
 extern int printf   (const char *, ...);
 extern int sprintf  (char *, const char *, ...);
 extern int vprintf  (const char *, char *);
 extern int vsprintf (char *, const char *, char *);
 extern char *gets (char *, int n);
 extern int scanf (const char *, ...);
 extern int sscanf (char *, const char *, ...);
 extern int puts (const char *);
 
 #pragma RESTORE
 
 
 
#line 2 "SourceCode.c" /0
 
  
#line 1 "C:\Keil_v5\C51\Inc\string.h" /0







 
 
 
 
 
 
#line 14 "C:\Keil_v5\C51\Inc\string.h" /1
  
 
 
#line 17 "C:\Keil_v5\C51\Inc\string.h" /0
 
 
#line 19 "C:\Keil_v5\C51\Inc\string.h" /1
  
 
#line 21 "C:\Keil_v5\C51\Inc\string.h" /0
 
 #pragma SAVE
 #pragma REGPARMS
 extern char  *strcat  (char *s1, const char *s2);
 extern char  *strncat (char *s1, const char *s2, size_t n);
 
 extern char   strcmp  (const char *s1, const char *s2);
 extern char   strncmp (const char *s1, const char *s2, size_t n);
 
 extern char  *strcpy  (char *s1, const char *s2);
 extern char  *strncpy (char *s1, const char *s2, size_t n);
 
 extern size_t strlen  (const char *);
 
 extern char  *strchr  (const char *s, char c);
 extern int    strpos  (const char *s, char c);
 extern char  *strrchr (const char *s, char c);
 extern int    strrpos (const char *s, char c);
 
 extern size_t strspn  (const char *s, const char *set);
 extern size_t strcspn (const char *s, const char *set);
 extern char  *strpbrk (const char *s, const char *set);
 extern char  *strrpbrk(const char *s, const char *set);
 extern char  *strstr  (const char *s, const char *sub);
 extern char  *strtok  (char *str, const char *set);
 
 extern char   memcmp  (const void *s1, const void *s2, size_t n);
 extern void  *memcpy  (void *s1, const void *s2, size_t n);
 extern void  *memchr  (const void *s, char val, size_t n);
 extern void  *memccpy (void *s1, const void *s2, char val, size_t n);
 extern void  *memmove (void *s1, const void *s2, size_t n);
 extern void  *memset  (void *s, char val, size_t n);
 #pragma RESTORE
 
 
#line 3 "SourceCode.c" /0
 
  
#line 1 "C:\Keil_v5\C51\Inc\stdlib.h" /0







 
 
 
 
 
 
#line 14 "C:\Keil_v5\C51\Inc\stdlib.h" /1
  
 
 
#line 17 "C:\Keil_v5\C51\Inc\stdlib.h" /0
 
 
#line 19 "C:\Keil_v5\C51\Inc\stdlib.h" /1
  
 
#line 21 "C:\Keil_v5\C51\Inc\stdlib.h" /0
 
 
 
 typedef char wchar_t;
 
 
 
#line 28 "C:\Keil_v5\C51\Inc\stdlib.h" /1
 
 
 
 
 
 
 
 
 
  
 
 
#line 40 "C:\Keil_v5\C51\Inc\stdlib.h" /0
 
 
 
 
 
 
#line 46 "C:\Keil_v5\C51\Inc\stdlib.h" /1
 
 
 
 
 
 
#line 52 "C:\Keil_v5\C51\Inc\stdlib.h" /0
 
 #pragma SAVE
 #pragma REGPARMS
 
 extern char   cabs (char  val);
 
 extern int    abs  (int   val);
 
 extern long   labs (long  val);
 
 extern float  atof (const char *s1);
 extern long   atol (const char *s1);
 extern int    atoi (const char *s1);
 extern int    rand (void);
 extern void   srand (unsigned int seed);
 
 
#line 69 "C:\Keil_v5\C51\Inc\stdlib.h" /1
 
  
 
 
#line 73 "C:\Keil_v5\C51\Inc\stdlib.h" /0
 
 extern float         strtod  (const char *nptr, char **endptr);
 extern long          strtol  (const char *nptr, char **endptr, unsigned char base);
 extern unsigned long strtoul (const char *nptr, char **endptr, unsigned char base);
 
 
 
 extern void init_mempool          (void xdata *p, size_t size);
 extern void xdata *malloc  (size_t size);
 extern void free                  (void xdata *p);
 extern void xdata *realloc (void xdata *p, size_t size);
 extern void xdata *calloc  (size_t nmemb, size_t size);
 
 
#line 87 "C:\Keil_v5\C51\Inc\stdlib.h" /1
 
 
#line 89 "C:\Keil_v5\C51\Inc\stdlib.h" /0
 
 #pragma RESTORE
 
 
#line 4 "SourceCode.c" /0
 
 
 
 
 
 sbit R1 = P1^0;      
 sbit R2 = P1^1;
 sbit R3 = P1^2;
 sbit R4 = P1^3;
 sbit C1 = P1^4;
 sbit C2 = P1^5;
 sbit C3 = P1^6;
 sbit C4 = P1^7;
 int number1;
 int number2;
 int buffer;
 int angka1=0;
 int angka2=0;
 int angka3=0;
 int angka4=0;
 int angka5=0;
 int hasil1;			 
 int hasil2;			 
 int hasilcount;	 
 
 void DELAY_ms(unsigned int ms_Count)  
 {
 unsigned int i, j;
 for (i = 0; i < ms_Count; i++) 
 {
 for (j = 0; j < 100; j++);
 }
 }
 
 void concat1(int a, int b,int c,int d)  
 {
 char s1[1];
 char s2[1];
 char s3[1];
 char s4[1];
 
 if(a !=0){
 sprintf(s1, "%d", a);
 sprintf(s2, "%d", b);
 sprintf(s3,"%d",c);
 sprintf(s4,"%d",d);
 strcat(s1, s2);
 strcat(s1,s3);
 strcat(s1,s4);
 DELAY_ms(200);
 hasil1= atoi(s1);
 DELAY_ms(200);
 }
 else{
 if(b !=0){
 sprintf(s2, "%d", b);
 sprintf(s3,"%d",c);
 sprintf(s4,"%d",d);
 strcat(s2,s3);
 strcat(s2,s4);
 DELAY_ms(200);
 hasil1= atoi(s2);
 DELAY_ms(200);
 }
 else{
 if(c !=0){
 sprintf(s3,"%d",c);
 sprintf(s4,"%d",d);
 strcat(s3,s4);
 DELAY_ms(200);
 hasil1= atoi(s3);
 DELAY_ms(200);
 }
 else{
 DELAY_ms(200);
 hasil1=d;
 DELAY_ms(200);
 }
 }
 }
 }
 
 void concat2(int f, int g,int h,int i)	 
 {
 char s5[1];
 char s6[1];
 char s7[1];
 char s8[1];
 
 if(f !=0){
 sprintf(s5, "%d", f);
 sprintf(s6, "%d", g);
 sprintf(s7,"%d",h);
 sprintf(s8,"%d",i);
 strcat(s5, s6);
 strcat(s5,s7);
 strcat(s5,s8);
 DELAY_ms(200);
 hasil2= atoi(s5);
 DELAY_ms(200);
 }
 else{
 if(g !=0){
 sprintf(s6, "%d", g);
 sprintf(s7,"%d",h);
 sprintf(s8,"%d",i);
 strcat(s6,s7);
 strcat(s6,s7);
 DELAY_ms(200);
 hasil2= atoi(s6);
 DELAY_ms(200);
 }
 else{
 if(h !=0){
 sprintf(s7,"%d",h);
 sprintf(s8,"%d",i);
 strcat(s7,s8);
 DELAY_ms(200);
 hasil2= atoi(s7);
 DELAY_ms(200);
 }
 else{
 DELAY_ms(200);
 hasil2=i;
 DELAY_ms(200);
 }
 }
 }
 }
 
 void push(int angka){	 
 angka5=angka;DELAY_ms(50);
 buffer=angka2;DELAY_ms(50);
 angka1=buffer;DELAY_ms(50);
 buffer=angka3;DELAY_ms(50);
 angka2=buffer;DELAY_ms(50);
 buffer=angka4;DELAY_ms(50);
 angka3=buffer;DELAY_ms(50);
 buffer=angka5;DELAY_ms(50);
 angka4=buffer;DELAY_ms(50);
 }
 
 int nthdig(int n, int k){	 
 while(n--)
 k/=10;
 return k%10;
 }
 
 void row_finder1()  
 {
 R1=R2=R3=R4=1;
 C1=C2=C3=C4=0;
 if(R1==0){push(7);DELAY_ms(200);}
 if(R2==0){push(4);DELAY_ms(200);}
 if(R3==0){push(1);DELAY_ms(200);}
 if(R4==0){  
 number1=0;
 number2=0;
 angka1=0;
 angka2=0;
 angka3=0;
 angka4=0;
 angka5=0;
 hasil1=0;
 hasil2=0;
 hasilcount=0;
 DELAY_ms(100);
 }
 }
 
 void row_finder2()  
 {
 R1=R2=R3=R4=1;
 C1=C2=C3=C4=0;
 if(R1==0){push(8);DELAY_ms(200);}
 if(R2==0){push(5);DELAY_ms(200);}
 if(R3==0){push(2);DELAY_ms(200);}
 if(R4==0){push(0);DELAY_ms(200);}
 }
 
 void row_finder3()  
 {
 R1=R2=R3=R4=1;
 C1=C2=C3=C4=0;
 if(R1==0){push(9);DELAY_ms(200);}
 if(R2==0){push(6);DELAY_ms(200);}
 if(R3==0){push(3);DELAY_ms(200);}
 if(R4==0){
 concat1(angka1,angka2,angka3,angka4);DELAY_ms(200);
 number1=0;
 number2=0;
 angka1=0;
 angka2=0;
 angka3=0;
 angka4=0;
 angka5=0;DELAY_ms(200);
 }
 }
 
 void row_finder4()  
 {
 R1=R2=R3=R4=1;
 C1=C2=C3=C4=0;
 
 if(R1==0){
 concat2(angka1,angka2,angka3,angka4);
 DELAY_ms(200);
 hasilcount=hasil1/hasil2;
 DELAY_ms(200);
 angka1=nthdig(3,hasilcount);
 DELAY_ms(200);
 angka2=nthdig(2,hasilcount);
 DELAY_ms(200);
 angka3=nthdig(1,hasilcount);
 DELAY_ms(200);
 angka4=nthdig(0,hasilcount);
 }
 if(R2==0){	
 concat2(angka1,angka2,angka3,angka4);
 DELAY_ms(200);
 hasilcount=hasil1*hasil2;
 DELAY_ms(200);
 angka1=nthdig(3,hasilcount);
 DELAY_ms(200);
 angka2=nthdig(2,hasilcount);
 DELAY_ms(200);
 angka3=nthdig(1,hasilcount);
 DELAY_ms(200);
 angka4=nthdig(0,hasilcount);
 }
 if(R3==0){
 concat2(angka1,angka2,angka3,angka4);
 DELAY_ms(200);
 hasilcount=hasil1-hasil2;
 DELAY_ms(200);
 angka1=nthdig(3,hasilcount);
 DELAY_ms(200);
 angka2=nthdig(2,hasilcount);
 DELAY_ms(200);
 angka3=nthdig(1,hasilcount);
 DELAY_ms(200);
 angka4=nthdig(0,hasilcount);
 }
 if(R4==0){
 concat2(angka1,angka2,angka3,angka4);
 DELAY_ms(200);
 hasilcount=hasil1+hasil2;
 DELAY_ms(200);
 angka1=nthdig(3,hasilcount);
 DELAY_ms(200);
 angka2=nthdig(2,hasilcount);
 DELAY_ms(200);
 angka3=nthdig(1,hasilcount);
 DELAY_ms(200);
 angka4=nthdig(0,hasilcount);
 }
 }
 
 int main() {
 char hexvalue[] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90};  
 number1=0;
 number2=0;
 angka1=0;
 angka2=0;
 angka3=0;
 angka4=0;
 angka5=0;
 while (1) 
 {
 C1=C2=C3=C4=1;
 R1=R2=R3=R4=0;
 if(C1==0)
 row_finder1();
 else if(C2==0)
 row_finder2();
 else if(C3==0)
 row_finder3();
 else if(C4==0)
 row_finder4();
 P3 = 0xf7;  
 P2 = hexvalue[angka1];               
 DELAY_ms(1);
 P3 = 0xfe;  
 P2 = hexvalue[angka2];               
 DELAY_ms(1);
 P3 = 0xfd;  
 P2 = hexvalue[angka3];               
 DELAY_ms(1);
 P3 = 0xfb;  
 P2 = hexvalue[angka4];               
 DELAY_ms(1);
 }
 }
