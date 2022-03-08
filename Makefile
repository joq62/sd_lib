all:
	rm -rf  *~ */*~  erl_cra*;	
	rm -rf _build;
	rm -rf ebin test_ebin;	
	mkdir ebin;
	rebar3 compile;
	cp _build/default/lib/*/ebin/* ebin;
	rm -rf _build;
	echo Done
eunit:
	rm -rf  *~ */*~  erl_cra*;
	rm -rf _build;
	rm -rf ebin test_ebin;
	mkdir ebin;
	mkdir test_ebin;
	rebar3 compile;
	cp _build/default/lib/*/ebin/* ebin;
	erlc -o test_ebin test/*.erl;
	erl -pa ebin -pa test_ebin -run basic_eunit start -sname test;
	echo Here we go

