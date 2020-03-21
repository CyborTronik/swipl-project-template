% usually test file is called in same way as target source file/module to test
% and just make /plt extension
:- begin_tests(sample).
:- use_module(src/main/prolog/app).

test(hello) :-
    hello(world).

:- end_tests(sample).