create code     link x_code       IMMEDIATE
create :        link x_colon      IMMEDIATE
create ;        link x_semicolon  IMMEDIATE
create CONSTANT link x_constant
create VARIABLE link x_variable
create USER     link x_user
create (        link x_round_bracket
create //       link x_slash_slash

// Internal
CODE CALL link code LOCAL

// Core
S" assign" CODE ! CPP CORE
: #     ??? ; CORE
: #>    ??? ; CORE
: #S    ??? ; CORE
: '     ??? ; CORE
: (     ??? ; CORE
S" mul"         CODE *      CORE
S" mul_div"     CODE */     CORE
S" mul_div_mod" CODE */MOD  CORE
S" plus"        CODE +      CORE
S" plus_assign" CODE +!     CORE
: +LOOP ??? ; CORE
: , HERE SWAP ! ; CORE
S" minus"       CODE -      CORE
: .     ??? ; CORE
: ."    ??? ; CORE
S" div "        CODE /      CORE
S" div_mod"     CODE /MOD   CORE
S" zero_less"   CODE 0<     CORE
S" zero_equal"  CODE 0=     CORE
S" one_plus"    CODE 1+     CORE
S" one_minus"   CODE 1-     CORE
S" two_assign"  CODE 2!     CORE
S" two_star"    CODE 2*     CORE
S" two_div"     CODE 2/     CORE
S" two_fetch"   CODE 2@     CORE
S" two_drop"    CODE 2DROP  CORE
S" two_dup"     CODE 2DUP   CORE
S" two_over"    CODE 2OVER  CORE
S" two_swap"    CODE 2SWAP  CORE
: : ??? ; CORE
: ; ??? ; CORE
S" less"        CODE < CORE
: <#    ??? ; CORE
S" equal"       CODE =      CORE
S" greater"     CODE >      CORE
USER >IN
: >NUMBER 








