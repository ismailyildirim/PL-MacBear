# Programming-Languages-MacBear

# Ahmet Gürdal / İsmail Yıldırım
Ahmet İsmail Programming Language known as Artifical Intelligence Programming Language

## Syntax

```
<program> -> <class> | <stmt_list> | <function> 

<class> -> public <class_name> {<stmt_list> | <function>} | <class_name> {<stmt_list> | <function>} 

<function> -> <return_type> <function_name>(<arg>){<stmt_list>}

<stmt_list> -> <stmt>; | <stmt>; <stmt_list> | <condition_list> <stmt_list> | <iteration> <stmt_list> 

<condition_list> -> <condition_start> | <condition_start> <condition_end>

<condition_start> -> if(<condition>){<stmt_list>} | if(<condition>) ? <stmt> : <stmt>

<condition_end> -> else(<condition>){<stmt_list>} | else{<stmt_list>}

<iteration> -> while(<condition>){<stmt_list>}

<condition> -> <bool> | <var><cn_op><var> 

<bool> -> true | false

<cn_op> -> == | != | > | < | => | =<

<stmt> -> <var> = <expr> | <var><ar_op> | <function_name>(<arg>) | return <return_value>;

<var> -> [a-zA-Z](?:[a-zA-Z0-9_])*

<expr> -> <var> | <var> <ar_op> <var> | <function_name>(<arg>) 

<ar_op> -> + | - | * | / | += | -= | *= | /= | % | ++ | --

```