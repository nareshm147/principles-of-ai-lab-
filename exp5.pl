% ============================================
% PROLOG PROGRAMS
% ============================================

% ============================================
% 1. FAMILY RELATIONSHIPS
% ============================================

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
% Output:
% true.


% ============================================
% 2. ANIMAL CLASSIFICATION
% ============================================

% Facts
has_hair(tiger).
gives_milk(tiger).

% Rule
mammal(X) :-
    has_hair(X),
    gives_milk(X).

% Query:
% ?- mammal(tiger).
% Output:
% true.


% ============================================
% 3. SIMPLE ARITHMETIC
% ============================================

% Rule
add(X, Y, Z) :-
    Z is X + Y.

% Query:
% ?- add(5, 7, Z).
% Output:
% Z = 12.
