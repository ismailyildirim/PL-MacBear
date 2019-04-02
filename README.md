#Programming-Languages-MacBear

#Ahmet Gürdal / İsmail Yıldırım
Ahmet İsmail Programming Language known as Artifical Intelligence Programming Language

#Syntax
<type-specifier> ::=str
                   | int
                   | float
                   | <enum-specifier>

<enum-specifier> ::= enum <identifier> { <enumerator-list> }
                   | enum { <enumerator-list> }
                   | enum <identifier>

<enumerator-list> ::= <enumerator>
                    | <enumerator-list> , <enumerator>

<enumerator> ::= <identifier>
               | <identifier> = <constant-expression>


