%%% -------------------------------------------------------------------
%%% @author  : Joq Erlang
%%% @doc: : 
%%% Created :
%%% Node end point  
%%% Creates and deletes Pods
%%% 
%%% API-kube: Interface 
%%% Pod consits beams from all services, app and app and sup erl.
%%% The setup of envs is
%%% -------------------------------------------------------------------
-module(sd_lib_eunit).   
 

%% --------------------------------------------------------------------
%% Include files
%% --------------------------------------------------------------------
-include_lib("eunit/include/eunit.hrl").

%% --------------------------------------------------------------------
%% Function: available_hosts()
%% Description: Based on hosts.config file checks which hosts are avaible
%% Returns: List({HostId,Ip,SshPort,Uid,Pwd}
%% --------------------------------------------------------------------

start_nodes_test()->
%    ok=test_nodes:start_nodes(),
    ok.
    
t1_test()->
    
%    ?debugVal(sd:all()),
    ?assertMatch([{_,
		   [{crypto,"CRYPTO","4.6.4"},
		    {inets,"INETS  CXC 138 49","7.1.2"},
		    {ssl,"Erlang/OTP SSL application","9.5.3"},
		    {kernel,"ERTS  CXC 138 10","6.5.1"},
		    {public_key,"Public key infrastructure","1.7.1"},
		    {asn1,"The Erlang ASN1 compiler version 5.0.9","5.0.9"},
		    {rebar,"Rebar: Erlang Build Tool","3.13.1"},
		    {stdlib,"ERTS  CXC 138 10","3.11.2"}]}],sd:all()),
    
    ok.

t2_test()->
 %   ?debugVal(sd:get(rebar)),
    ?assert([nonode@nohost]=:=sd:get(rebar)),
    ok.

