# Glue

# Installation

Simply run `./install.sh` with root privileges and follow the instruction.

A program that allows you merge your files side by side or line by line. Actually, `paste` command does this, right? Yes, but `glue` respects line lengths, do not separate them via tab spaces unlike the command `paste`. 

Glue also lets you to justify text and to set a separator between texts.

# Help Page

```
Paste files together with glue. This program lets you to put file lines together and to set justify text. Also you can set a separator.
Usage:
    glue [OPTIONS] [INPUT FILES]
    glue [OPTIONS] [INPUT FILES] > [OUTPUT FILE]

Options:
    -h       , --help            : Print this help document and exit.
    -s [SPR] , --separator=[SPR] : Use this delimiter to split files.
    -j [DIR] , --justify=[DIR]   : Justify text. 0 is left, 1 is center, 2 is right.
    -y       , --y-axis          : Merge files in y axis.

Notes:
    * Justify option can only take 0, 1 and 2 values.
        Any other options will be ignored.
    * Do not select the output file from the input file.

Exit Codes:
      0 : Program done it's job successfully.
      1 : An error occurred.
    126 : File permission denied. Check file permissions.
    130 : Process terminated by user.
```

# Examples

```sh
[user@pc~]$ glue title data0 data1     
Name          Furkan                    Anonymous       
Surname       Baytekin                  Anonymoussons   
Nickname      Elagoht                   Anon            
Distribuiton  Arch Linux                Tails OS        
Email Adress  furkanbaytekin@gmail.com  anonym@anonym.io
[user@pc~]$ glue -j 1 title data0 data1
    Name               Furkan              Anonymous    
  Surname             Baytekin           Anonymoussons  
  Nickname            Elagoht                 Anon      
Distribuiton         Arch Linux             Tails OS    
Email Adress  furkanbaytekin@gmail.com  anonym@anonym.io
[user@pc~]$ glue -j2 -s" | " title data0 data1
        Name |                   Furkan |        Anonymous
     Surname |                 Baytekin |    Anonymoussons
    Nickname |                  Elagoht |             Anon
Distribuiton |               Arch Linux |         Tails OS
Email Adress | furkanbaytekin@gmail.com | anonym@anonym.io
[user@pc~]$ glue -y title data0 data1
Name       Surname        Nickname  Distribuiton  Email Adress            
Furkan     Baytekin       Elagoht   Arch Linux    furkanbaytekin@gmail.com
Anonymous  Anonymoussons  Anon      Tails OS      anonym@anonym.io        
[user@pc~]$ glue -yj1 title data0 data1 
   Name       Surname     Nickname  Distribuiton        Email Adress      
  Furkan      Baytekin    Elagoht    Arch Linux   furkanbaytekin@gmail.com
Anonymous  Anonymoussons    Anon      Tails OS        anonym@anonym.io    
[user@pc~]$ glue -yj2 -s "" title data0 data1
     Name      SurnameNicknameDistribuiton            Email Adress
   Furkan     Baytekin Elagoht  Arch Linuxfurkanbaytekin@gmail.com
AnonymousAnonymoussons    Anon    Tails OS        anonym@anonym.io
```
