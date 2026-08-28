% ============================================================
% EX 6: PROGRAMS IN PROLOG
% ============================================================


% ============================================================
% 1. FAMILY RELATIONSHIPS
% ============================================================

% Problem: Define family relations and answer grandparent queries.

% Facts
parent(john, mary).
parent(mary, susan).
parent(john, mike).

% Rule
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Query:
% ?- grandparent(john, susan).
%
% Output:
% true.


% ============================================================
% 2. ANIMAL CLASSIFICATION
% ============================================================

% Problem: Identify if an animal is a mammal based on features.

% Facts
has_hair(tiger).
gives_milk(tiger).

% Rule
mammal(X) :-
    has_hair(X),
    gives_milk(X).

% Query:
% ?- mammal(tiger).
%
% Output:
% true.


% ============================================================
% 3. SIMPLE ARITHMETIC KNOWLEDGE BASE
% ============================================================

% Problem: Implement simple addition using PROLOG.

% Rule
add(X, Y, Z) :-
    Z is X + Y.

% Query:
% ?- add(5, 7, Z).
%
% Output:
% Z = 12.