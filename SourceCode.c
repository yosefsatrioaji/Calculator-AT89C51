/*
Created by Yosef Satrio Aji
Computer Engineering Diponegoro University
June 4th, 2021
Calculator using AT89C51, keypad, and 4-digit 7segment
*/

#include <reg51.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define SegOne   0xf7 //Digit pertama 7segment
#define SegTwo   0xfe //Digit kedua
#define SegThree 0xfd //Digit ketiga
#define SegFour  0xfb //Digit keempat
sbit R1 = P1^0;     //Menghubungkan keypad dengan port 1
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
int hasil1;			//Variabel angka pertama
int hasil2;			//Variabel angka kedua
int hasilcount;	//Variabel hasil

void DELAY_ms(unsigned int ms_Count) //Menginisiasi delay
{
    unsigned int i, j;
    for (i = 0; i < ms_Count; i++) 
    {
        for (j = 0; j < 100; j++);
    }
}

void concat1(int a, int b,int c,int d) //Menggabungkan 4 variabel angka menjadi 1 variabel
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

void concat2(int f, int g,int h,int i)	//Menggabungkan 4 variabel angka menjadi 1 variabel
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

void push(int angka){	//Queue pada digit 7segment
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

int nthdig(int n, int k){	//Membagi 1 variabel angka menjadi 4 variabel angka
	while(n--)
		k/=10;
	return k%10;
}

void row_finder1() //Keypad kolom1
{
	R1=R2=R3=R4=1;
	C1=C2=C3=C4=0;
if(R1==0){push(7);DELAY_ms(200);}
if(R2==0){push(4);DELAY_ms(200);}
if(R3==0){push(1);DELAY_ms(200);}
if(R4==0){ //Mereset calculator
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

void row_finder2() //Keypad kolom2
{
	R1=R2=R3=R4=1;
	C1=C2=C3=C4=0;
if(R1==0){push(8);DELAY_ms(200);}
if(R2==0){push(5);DELAY_ms(200);}
if(R3==0){push(2);DELAY_ms(200);}
if(R4==0){push(0);DELAY_ms(200);}
}

void row_finder3() //Keypad kolom3
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

void row_finder4() //Keypad kolom4
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
char hexvalue[] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90}; //7segment 0 sampai 9
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
		P3 = SegOne; //menyalakan 7segment pertama
		P2 = hexvalue[angka1];               
		DELAY_ms(1);
		P3 = SegTwo; //menyalakan 7segment kedua
		P2 = hexvalue[angka2];               
		DELAY_ms(1);
		P3 = SegThree; //menyalakan 7segment ketiga
		P2 = hexvalue[angka3];               
		DELAY_ms(1);
		P3 = SegFour; //menyalakan 7segment keempat
		P2 = hexvalue[angka4];               
		DELAY_ms(1);
	}
}
