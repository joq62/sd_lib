all:
	rm -rf  *~ */*~  erl_cra*;
	rm -rf _build;
	rebar3 compile;
	rm -rf _build;
	echo Done
eunit:
	rm -rf  *~ */*~  erl_cra*;
	rm -rf _build;
	rebar3 compile;
	rebar3 eunit;
	echo Here we go

