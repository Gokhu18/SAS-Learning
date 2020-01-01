*.txt files;
data salaries;
infile "/home/u44979357/SAS Learning/salary.txt";
input year salary;
run;

*.csv files;
data weightgains;
infile "/home/u44979357/SAS Learning/weightgain.csv" DSD MISSOVER FIRSTOBS=2;
input id source$ type$ weightg;
run;

*.xlsx files;
proc import out=salesdata datafile= "/home/u44979357/SAS Learning/Sample-Sales-Data.xlsx" dbms=xlsx;
run;

*Replace overwrites the worked data to original;
proc import out=salesdata datafile= "/home/u44979357/SAS Learning/Sample-Sales-Data.xlsx" dbms=xlsx REPLACE;

*Getting the specific sheet;
range="Sheet1";

*Removes variable names row;
getnames=NO;

*Data starts from 10th row;
datarow=10;

*If there are different variable types in the same column then it considers all values as string;
mixed=YES;

*.spss files;
proc import out=p054 datafile="/home/u44979357/SAS Learning/p054.sav";
proc contents data=p054
run;