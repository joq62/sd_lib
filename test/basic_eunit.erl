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
-module(basic_eunit).   
 
-export([start/0]).
%% --------------------------------------------------------------------
%% Include files
%% --------------------------------------------------------------------
-include_lib("eunit/include/eunit.hrl").
-include_lib("kernel/include/logger.hrl").
%% --------------------------------------------------------------------
%% Function: available_hosts()
%% Description: Based on hosts.config file checks which hosts are avaible
%% Returns: List({HostId,Ip,SshPort,Uid,Pwd}
%% --------------------------------------------------------------------
start()->
    ok=t1_test(),
    ok=t2_test(),
    
   % ok=t22_test(),
%   ok=test3(),
 %   ok=test4(),
  %  init:stop(),
    ok.

t1_test()->
    
%    ?debugVal(sd:all()),
    ?assertMatch([{_,
		   [{kernel,"ERTS  CXC 138 10","6.5.1"},
		    {stdlib,"ERTS  CXC 138 10","3.11.2"}]}],sd:all()),
    
    ok.

t2_test()->
 %   ?debugVal(sd:get(rebar)),
    ?assert([test@c100]=:=sd:get(kernel)),
    ok.

t22_test()->
    timer:sleep(1000),
    log:update(),
    io:format("log:read(3) ~p~n",[{log:read(3),?MODULE,?FUNCTION_NAME,?LINE}]),
    io:format("log:error(3) ~p~n",[{log:error(3),?MODULE,?FUNCTION_NAME,?LINE}]),
    io:format("log:critical(3) ~p~n",[{log:critical(3),?MODULE,?FUNCTION_NAME,?LINE}]),
    ok.


stop_test()->
   % init:stop(),
    ok.

%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% -------------------------------------------------------------------


setup()->
  
    % Simulate host
    R=rpc:call(node(),test_nodes,start_nodes,[],2000),
%    [Vm1|_]=test_nodes:get_nodes(),

%    Ebin="ebin",
 %   true=rpc:call(Vm1,code,add_path,[Ebin],5000),
 
    R.
