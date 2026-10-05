% ============================================================
% Experiment 8: Backward Chaining
% ============================================================

% ============================================================
% Exercise 1: Medical Diagnosis
% ============================================================

% Facts
has_fever(john).
has_cough(john).

% Rule
has_flu(X) :-
    has_fever(X),
    has_cough(X).


% ============================================================
% Exercise 2: Student Eligibility Checker
% ============================================================

% Facts
passed(alice, maths).
passed(alice, science).

% Rule
eligible(X) :-
    passed(X, maths),
    passed(X, science).


% ============================================================
% Exercise 3: Travel Planner
% ============================================================

% Facts
has_ticket(james).
has_visa(james).

% Rule
can_travel(X) :-
    has_ticket(X),
    has_visa(X).


% ============================================================
% Queries / Expected Output
% ============================================================

% Exercise 1:
% ?- has_flu(john).
% true.

% Exercise 2:
% ?- eligible(alice).
% true.

% Exercise 3:
% ?- can_travel(james).
% true.