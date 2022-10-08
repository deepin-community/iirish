#!/usr/bin/perl
#
# $Id: $
# Copyright (C) 2002 Alastair McKinstry <mckinstry@computer.org>
# This file is distributed under the terms of the GPL.

use Debian::DebianTest;
use Ispell::IspellTest;

@verbs_correct = (
		  "molaim", "molann t�",
		  "molaimid", "mhol m�",
		  "mholamar", "moladh");
@verbs_fail = (
	       "molamar", "fios", "bhfios",
	       "bpointe", "phointe", "pointe ");

@prepositions = (
		 "agam", "agat", "aige", "aici",
		 "againn", "agaibh", "acu",
		 "orm", "ort", "air", "uirthi",
		 "orainn", "oraibh", "orthu",
		 "asam", "asat", "as", "aisti",
		 "asainn", "asaibh", "astu",
		 "chugam", "chugat", "chuige", "chuici",
		 "chugainn", "chugaibh", "chucu",
		 "d�om", "d�ot", "de", "di",
		 "d�nn", "d�bh", "d�obh", "dom",
		 "duit", "d�", "di",
		 "d�inn", "daoibh", "d�ibh",
		 "f�m", "f�t", "faoi", "f�ithi",
		 "f�inn", "f�ibh", "f�thu", 
		 "ionam", "ionat", "ann", "inti", 
		 "ionainn", "ionaibh", "iontu", 
		 "eadrainn", "eadraibh", "eatarthu", 
		 "ionsorm", "ionsort", "ionsair", "ionsuirthu",
		 "ionsorainn", "ionsoraibh", "ionsorthu",
		 "liom", "leat", "leis", "l�i", 
		 "linn", "libh", "leo",
		 "uaim", "uait", "uaidh", "uaithu",
		 "uainn", "uaibh", "uathu",
		 "romhain", "romhat", "roimhe", "roimpi",
		 "romhainn", "romhaibh", "rompu",
		 "tharam", "tharat", "thairis", "thairsti",
		 "tharainn", "tharaibh", "tharstu",
		 "tr�om", "tr�ot", "tr�d", "tr�thi",
		 "tr�nn", "tr�bh", "tr�othu",
		 "umam", "umat", "uime", "uimpi", 
		 "umainn", "umaibh", "umpu");

@capitals_correct = { 
    "h�ireann"
    };
@capitals_fail =  {
    "h�ireann"
    };


#baile
#Bhaile
#bhaile
#bhbaile
#mBaile
#Mbaile
#�ire
#h�ire
#H�ire
#H�ire

runtest ("Correct verbs", 
	 sub { ispell_correct (DICT => "irish", WORDLIST => @verbs_correct) } );
runtest ("Incorrect verbs", 
	 sub { ispell_incorrect (DICT => "irish", WORDLIST => @verbs_fail) } );
runtest ("Prepositions", 
	 sub { ispell_correct (DICT=> "irish", WORDLIST => @prepositions) } );
runtest ("Correct capitalisations", 
	 sub { ispell_correct (DICT => "irish", WORDLIST => @capitals_correct) } );
runtest ("Incorrect capitalisations", 
	 sub { ispell_incorrect (DICT => "irish", WORDLIST => @capitals_fail) } );

# Local variables:
# mode: perl
# perl-indent-level: 4
# End:
