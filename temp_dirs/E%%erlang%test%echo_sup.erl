Vim�UnDo� ״L�l$u�O+a�KV-���\��Z����=��   :   D                                     permanent, 5000, Type, [Mod]}).      %      $       $   $   $Prq}Prq}    _�                             ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                 -behaviour()�                  -module(echo_sup)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                 	-export()�                 -behaviour(supervisor)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                 -export(init/1)5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                 -export([]init/1)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                 -export([init/1)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrK�PrK�     �                 init()�                 -export([init/1])5�_�      	                 
    ����                                                                                                                                                                                                                                                                                                                                                         PrLPrL     �                     {}�                 
init(Args)5�_�      
           	      *    ����                                                                                                                                                                                                                                                                                                                                                         PrL[PrL[     �                 *    {ok, {RestartStrategy, ChildSpecList}}5�_�   	              
      $    ����                                                                                                                                                                                                                                                                                                                                                         PrL^PrL^     �                 +    {ok, {RestartStrategy, ChildSpecList}}.5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                         PrLbPrLb     �                 (    {ok, {RestartStrategy, ChildSpec]}}.5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrLcPrLc     �                 *    {ok, {RestartStrategy, []ChildSpec]}}.5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         PrLfPrLf     �      	   	          �      	       5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                         PrL�PrL�     �      
   
          ChildSpec = {}�      
   	      -    RestartStrategy = {one_for_one, 10, 1000}5�_�                    	   ;    ����                                                                                                                                                                                                                                                                                                                                                         PrL�PrL�     �      
   
      <    ChildSpec = {echo_server, {echo_server, start_link, []}}5�_�                    	   Y    ����                                                                                                                                                                                                                                                                                                                                                         PrL�PrL�    �      
   
      Y    ChildSpec = {echo_server, {echo_server, start_link, []}, 1000, worker, [echo_server]}5�_�                           ����                                                                                                                                                                                                                                                                                                                	   Y                                    PrMPrM    �         
      init(Args) ->5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                       PrM�PrM�     �   
            5�_�                           ����                                                                                                                                                                                                                                                                                                                                              v   PrM�PrM�     �         D      -module(echo_server).5�_�                            ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �                 -module(echo_sup).       -behaviour(supervisor).    5�_�                            ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �                 -export([init/1]).5�_�                            ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �                 init(_Args) ->5�_�                            ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �                 .    RestartStrategy = {one_for_one, 10, 1000},   Z    ChildSpec = {echo_server, {echo_server, start_link, []}, 1000, worker, [echo_server]},   )    {ok, {RestartStrategy, [ChildSpec]}}.5�_�                    5        ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �   5   7   :    5�_�                    6        ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �   6   :   ;    5�_�                    6        ����                                                                                                                                                                                                                                                                                                                                               V   PrM�PrM�     �   5   6           5�_�                     6       ����                                                                                                                                                                                                                                                                                                                                               V   PrN!PrN!     �   5   6          .    RestartStrategy = {one_for_one, 10, 1000},5�_�      !              8   )    ����                                                                                                                                                                                                                                                                                                                           8   )       8   2       v   2PrNZPrNZ     �   7   9   <      R    {ok, {{one_for_one, 5, 10}, [?CHILD('SomeChild', 'SomeModule', worker, [])]}}.5�_�       "           !   8   8    ����                                                                                                                                                                                                                                                                                                                           8   8       8   B       v   BPrNdPrNd     �   7   9   <      T    {ok, {{one_for_one, 5, 10}, [?CHILD('echo_server', 'SomeModule', worker, [])]}}.5�_�   !   #           "   6       ����                                                                                                                                                                                                                                                                                                                           8   8       8   B       v   BPrNPrN     �   5   6          Z    ChildSpec = {echo_server, {echo_server, start_link, []}, 1000, worker, [echo_server]},5�_�   "   $           #   6       ����                                                                                                                                                                                                                                                                                                                           7   8       7   B       v   BPrN�PrN�    �   5   6          )    {ok, {RestartStrategy, [ChildSpec]}}.5�_�   #               $      %    ����                                                                                                                                                                                                                                                                                                                6          6   8       6   B       v   BPrq|Prq|    �         :      D                                     permanent, 5000, Type, [Mod]}).5�_�                           ����                                                                                                                                                                                                                                                                                                                                               v   PrN=PrN=     �         <      J-define(CHILD(echo_server, Mod, Type, Args), {Id, {Mod, start_link, Args},5�_�                           ����                                                                                                                                                                                                                                                                                                                                               v   PrNGPrNG     �         <      R-define(CHILD(echo_server, echo_server, Type, Args), {Id, {Mod, start_link, Args},5�_�                        (    ����                                                                                                                                                                                                                                                                                                                                               v   PrNJPrNJ     �         <      T-define(CHILD(echo_server, echo_server, worker, Args), {Id, {Mod, start_link, Args},5��