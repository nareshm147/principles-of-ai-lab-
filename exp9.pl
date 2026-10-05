% ============================================================
% Experiment 9: Forward Chaining
% ============================================================

% ============================================================
% Exercise 1: Simple Inference
% ============================================================

:- dynamic known/1.

% Initial knowledge
start1 :-
    assert(known(a)),
    assert(known(b)),
    infer.

% Rule
infer :-
    known(a),
    known(b),
    \+ known(c),
    assert(known(c)),
    write('Inferred c'),
    nl.


% ============================================================
% Exercise 2: Fire Alert System
% ============================================================

% Rule to infer fire
check :-
    known(smoke),
    known(heat),
    assert(known(fire)),
    write('Fire Alert!'),
    nl.

% Start rule
start2 :-
    assert(known(smoke)),
    assert(known(heat)),
    check.


% ============================================================
% Exercise 3: Water Purity Detection
% ============================================================

% Rule to infer pollution
infer_pollution :-
    known(cloudy_water),
    known(bad_smell),
    assert(known(polluted)),
    write('Water is polluted'),
    nl.

% Start rule
start3 :-
    assert(known(cloudy_water)),
    assert(known(bad_smell)),
    infer_pollution.


% ============================================================
% Queries / Expected Output
% ============================================================

% Exercise 1:
% ?- start1.
% Inferred c
%
% Exercise 2:
% ?- start2.
% Fire Alert!
%
% Exercise 3:
% ?- start3.
% Water is polluted