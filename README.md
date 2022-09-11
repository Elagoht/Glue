# Glue

A program that allows you merge your files side by side or line by line. Actually, `paste` command does this, right? Yes, but `glue` respects line lengths, do not separate them via tab spaces unlike the command `paste`. 

Glue also lets you to justify text and to set a separator between texts.

There are some examples below:

```sh
[user@pc~]$ ./glue title data0 data1     
Name          Furkan                    Anonymous       
Surname       Baytekin                  Anonymoussons   
Nickname      Elagoht                   Anon            
Distribuiton  Arch Linux                Tails OS        
Email Adress  furkanbaytekin@gmail.com  anonym@anonym.io
[user@pc~]$ ./glue -j 1 title data0 data1
    Name               Furkan              Anonymous    
  Surname             Baytekin           Anonymoussons  
  Nickname            Elagoht                 Anon      
Distribuiton         Arch Linux             Tails OS    
Email Adress  furkanbaytekin@gmail.com  anonym@anonym.io
[user@pc~]$ ./glue -j2 -s" | " title data0 data1
        Name |                   Furkan |        Anonymous
     Surname |                 Baytekin |    Anonymoussons
    Nickname |                  Elagoht |             Anon
Distribuiton |               Arch Linux |         Tails OS
Email Adress | furkanbaytekin@gmail.com | anonym@anonym.io
[user@pc~]$ ./glue -y title data0 data1
Name       Surname        Nickname  Distribuiton  Email Adress            
Furkan     Baytekin       Elagoht   Arch Linux    furkanbaytekin@gmail.com
Anonymous  Anonymoussons  Anon      Tails OS      anonym@anonym.io        
[user@pc~]$ ./glue -yj1 title data0 data1 
   Name       Surname     Nickname  Distribuiton        Email Adress      
  Furkan      Baytekin    Elagoht    Arch Linux   furkanbaytekin@gmail.com
Anonymous  Anonymoussons    Anon      Tails OS        anonym@anonym.io    
[user@pc~]$ ./glue -yj2 -s "" title data0 data1
     Name      SurnameNicknameDistribuiton            Email Adress
   Furkan     Baytekin Elagoht  Arch Linuxfurkanbaytekin@gmail.com
AnonymousAnonymoussons    Anon    Tails OS        anonym@anonym.io
```

# Installation


