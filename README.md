# Programming-Languages-MacBear

## Ahmet Gürdal / İsmail Yıldırım
Ahmet İsmail Programming Language known as Artifical Intelligence Programming Language

## Syntax

```
<program> ::= <class> | <stmt_list> | <function_list> 

<class> ::= public <class_name> {<stmt_list> | <function_list>} | <class_name> {<stmt_list> | <function_list>} 

<function_list> ::= <function> | <function><function_list>

<function> ::= <return_type> <variable_name>(<arg>){<stmt_list>}

<stmt_list> ::= <stmt>; | <stmt>; <stmt_list> | <condition_list> <stmt_list> | <iteration> <stmt_list> 

<condition_list> ::= <condition_start> | <condition_start> <condition_end_list> | if(<condition>) ? <stmt> : <stmt>

<condition_start> ::= if(<condition>){<stmt_list>}

<condition_end_list> ::= <condition_end> | <condition_end> <condition_end_list>

<condition_end> ::= else(<condition>){<stmt_list>} | else{<stmt_list>}

<iteration> ::= while(<condition>){<stmt_list>}

<condition> ::= <bool> | <var><cn_op><var> 

<bool> ::= true | false

<string> ::= ".*"

<integer> ::= [0-9]*

<float> ::= [0-9]*\.[0-9]*

<data> = <bool> | <string> | <integer> | <float> 

<cn_op> ::= == | != | > | < | => | =<

<stmt> ::= <var> = <expr> | <var><ar_op> | <variable_name>(<arg>) | return <var>;

<var> ::= <variable_name> | <data>

<variable_name> ::= [a-zA-Z](?:[a-zA-Z0-9_])*

<expr> ::= <var> | <var> <ar_op> <var> | <variable_name>(<arg>) 

<ar_op> ::= + | - | * | / | += | -= | *= | /= | % | ++ | -- | **

```