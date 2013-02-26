Vim�UnDo� wa����|��o4.[�1�x\S���i��   �       do_lock(),   X         H       H   H   HP}yP}y    _�                             ����                                                                                                                                                                                                                                                                                                                                                         P}rbP}rb     �                  �   	             -module($MODULENAME).�   	            �               �                %%% @copyright $YEAR $OWNER�                %%% @author $AUTHOR�               5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                         P}rsP}rs     �   (   *   �      start_link() ->5�_�                    *   3    ����                                                                                                                                                                                                                                                                                                                                                         P}rzP}rz     �   )   +   �      :    gen_fsm:start_link({local, ?MODULE}, ?MODULE, [], []).5�_�                    =       ����                                                                                                                                                                                                                                                                                                                                                         P}r�P}r�     �   <   >   �      init([]) ->5�_�                    *   2    ����                                                                                                                                                                                                                                                                                                                                                         P}sP}s     �   )   +   �      >    gen_fsm:start_link({local, ?MODULE}, ?MODULE, [Code], []).5�_�                    *   6    ����                                                                                                                                                                                                                                                                                                                                                         P}sP}s     �   )   +   �      =    gen_fsm:start_link({local, ?MODULE}, ?MODULE, Code], []).5�_�                    =       ����                                                                                                                                                                                                                                                                                                                                                         P}sP}s     �   <   >   �      init([Code]) ->5�_�      	              =   	    ����                                                                                                                                                                                                                                                                                                                                                         P}sP}s    �   <   >   �      init(Code]) ->5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                =   	                                    P}s P}s     �         �      -record(state, {}).5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                       P}s,P}s,    �         �      -export([start_link/0]).5�_�   
                 >       ����                                                                                                                                                                                                                                                                                                                                                       P}sAP}sA    �   =   ?   �          {ok, state_name, #state{}}.5�_�                    >   	    ����                                                                                                                                                                                                                                                                                                                >   &       >   	       >          v   P}slP}sl     �   =   ?   �      *    {ok, state_name, #state{code = Code}}.5�_�                    O        ����                                                                                                                                                                                                                                                                                                                >   &       O           O   
       v   
P}ssP}ss    �   N   P   �      state_name(_Event, State) ->5�_�                    O       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}s�P}s�     �   N   P   �      locked(_Event, State) ->5�_�                    O       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}s�P}s�     �   N   P   �      locked(Input, State) ->5�_�                    O   5    ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}tAP}tA     �   P   R   �          case length()�   O   R   �          �   O   Q   �    5�_�                    Q       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}trP}tr     �   P   R   �          case length(NewInputs)5�_�                    Q   *    ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}tyP}ty     �   P   T   �      *    case length(NewInputs) == length(Code)5�_�                    S       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}t�P}t�     �   R   T   �                  NewInputs = Code5�_�                    S       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}t�P}t�     �   R   T   �                  NewInputs == Code5�_�                    S       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}t�P}t�     �   R   U   �                   if NewInputs == Code5�_�                    T   !    ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}t�P}t�     �   T   V   �                          {}�   S   V   �      !                NewInputs == Code5�_�                    U   -    ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}t�P}t�     �   V   X   �                          {}�   T   X   �      -                    {next_state, open, State}5�_�                    W   A    ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}t�P}t�     �   Y   [   �                  {}�   V   [   �      A                    {next_state, loced, State#state{inputs = []}}5�_�                    Z   A    ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}uP}u     �   Y   \   �      A            {next_state, locked, State#state{inputs = NewInputs}}5�_�                    \       ����                                                                                                                                                                                                                                                                                                                O          O          O          v   P}u!P}u!     �   [   \          $    {next_state, state_name, State}.5�_�                    S        ����                                                                                                                                                                                                                                                                                                                \           O          O          v   P}u"P}u"    �   R   T                      if 5�_�                           ����                                                                                                                                                                                                                                                                                                                \           O          O          v   P}u.P}u.     �         �      -record(state, {code}).5�_�                           ����                                                                                                                                                                                                                                                                                                                \           O          O          v   P}u2P}u2     �         �      -record(state, {code = []}).5�_�                           ����                                                                                                                                                                                                                                                                                                                ]           P          P          v   P}u6P}u6     �         �      -record(state, {code = [],5�_�                            ����                                                                                                                                                                                                                                                                                                                ^           Q          Q          v   P}u7P}u7    �         �              �         �    5�_�      !               R       ����                                                                                                                                                                                                                                                                                                                          R          R          v   P}uyP}uy     �   Q   S   �      ;locked(Input, State#state{code = Code, inputs = Inputs}) ->5�_�       "           !   R   2    ����                                                                                                                                                                                                                                                                                                                          R          R          v   P}u�P}u�     �   Q   S   �      6locked(Input, #state{code = Code, inputs = Inputs}) ->5�_�   !   #           "   R   4    ����                                                                                                                                                                                                                                                                                                                          R          R          v   P}u�P}u�   	 �   Q   S   �      9locked(Input, #state{code = Code, inputs = Inputs} = ) ->5�_�   "   $           #   _        ����                                                                                                                                                                                                                                                                                                                R   9       R   9       ^          V   9P}u�P}u�     �   _   m   �    5�_�   #   %           $   `        ����                                                                                                                                                                                                                                                                                                                R   9       R   9       ^          V   9P}u�P}u�     �   _   a   �      >locked(Input, #state{code = Code, inputs = Inputs} = State) ->5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                R   9                            V   P}w�P}w�     �                -record(state, {           code = [],           inputs = []       }).    5�_�   %   '           &   <       ����                                                                                                                                                                                                                                                                                                                M   9       <          <   $       v   $P}w�P}w�     �   ;   =   �      &    {ok, locked, #state{code = Code}}.5�_�   &   (           '   <       ����                                                                                                                                                                                                                                                                                                                M   9       <          <   $       v   $P}w�P}w�     �   ;   =   �          {ok, locked, {[]}}.5�_�   '   )           (   M       ����                                                                                                                                                                                                                                                                                                                M   9       M          M   :       v   :P}w�P}w�     �   L   N   �      >locked(Input, #state{code = Code, inputs = Inputs} = State) ->5�_�   (   *           )   N       ����                                                                                                                                                                                                                                                                                                                M   9       M          M   :       v   :P}w�P}w�     �   M   N               NewInputs = Inputs ++ Input,5�_�   )   +           *   N       ����                                                                                                                                                                                                                                                                                                                M   9       N          N   )       v   )P}w�P}w�     �   M   O   �      -    case length(NewInputs) == length(Code) of5�_�   *   ,           +   N   	    ����                                                                                                                                                                                                                                                                                                                M   9       N          N   )       v   )P}w�P}w�     �   M   O   �          case length() of5�_�   +   -           ,   N   	    ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   M   O   �          case () of5�_�   ,   .           -   M       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   L   N   �      locked(Input, {Sofar, Code}) ->5�_�   -   /           .   N   
    ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   M   O   �          case [] of5�_�   .   0           /   O       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   N   P   �              true ->5�_�   /   1           0   P       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   O   P                      if5�_�   0   2           1   P       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   O   P          $                NewInputs == Code ->5�_�   1   3           2   P       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   O   Q          .                    {next_state, open, State};5�_�   2   4           3   Q       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   P   Q                          true ->5�_�   3   5           4   Q       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   P   Q          A                    {next_state, loced, State#state{inputs = []}}5�_�   4   6           5   Q       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   P   Q                      end;5�_�   5   7           6   P       ����                                                                                                                                                                                                                                                                                                                M   9       N   	       N          v   P}w�P}w�     �   O   Q   �      &            {next_state, open, State};5�_�   6   8           7   P       ����                                                                                                                                                                                                                                                                                                                M   9       P          P   !       v   !P}xP}x     �   O   Q   �      #            {next_state, open, []};5�_�   7   9           8   P   "    ����                                                                                                                                                                                                                                                                                                                M   9       P          P   !       v   !P}xP}x     �   O   Q   �      %            {next_state, open, {[]}};5�_�   8   :           9   Q       ����                                                                                                                                                                                                                                                                                                                M   9       P          P   !       v   !P}xP}x     �   P   R   �              false ->5�_�   9   ;           :   Q   *    ����                                                                                                                                                                                                                                                                                                                M   9       P          P   !       v   !P}x6P}x6     �   P   R   �      -        InComplete when length(InComplete) ->5�_�   :   <           ;   R   !    ����                                                                                                                                                                                                                                                                                                                M   9       R   !       R   @       v   @P}xFP}xF     �   Q   S   �      A            {next_state, locked, State#state{inputs = NewInputs}}5�_�   ;   =           <   R   4    ����                                                                                                                                                                                                                                                                                                                M   9       R   !       R   @       v   @P}xPP}xP     �   S   U   �                  {}�   Q   U   �      4            {next_state, locked, [InComplete, Code]}5�_�   <   >           =   T   $    ����                                                                                                                                                                                                                                                                                                                M   9       R   !       R   @       v   @P}xgP}xg     �   S   U   �      &            {next_state, locked, {[]}}5�_�   =   ?           >   P   )    ����                                                                                                                                                                                                                                                                                                                M   9       R   !       R   @       v   @P}xoP}xo   
 �   O   Q   �      +            {next_state, open, {[], Code}};5�_�   >   @           ?   W       ����                                                                                                                                                                                                                                                                                                                P   .       R   !       R   @       v   @P}x|P}x|     �   V   X   �      <open(Input, #state{code = Code, inputs = Inputs} = State) ->5�_�   ?   A           @   W       ����                                                                                                                                                                                                                                                                                                                P   .       R   !       R   @       v   @P}x�P}x�     �   V   X   �      7open(, #state{code = Code, inputs = Inputs} = State) ->5�_�   @   B           A   W       ����                                                                                                                                                                                                                                                                                                                P   .       W          W   :       v   :P}x�P}x�     �   V   X   �      >open(timeout, #state{code = Code, inputs = Inputs} = State) ->5�_�   A   C           B   X       ����                                                                                                                                                                                                                                                                                                                P   .       W          W   :       v   :P}x�P}x�     �   W   X               NewInputs = Inputs ++ Input,5�_�   B   D           C   X        ����                                                                                                                                                                                                                                                                                                                P   .       X          b          V   P}x�P}x�     �   W   X          -    case length(NewInputs) == length(Code) of           true ->               if   $                NewInputs == Code ->   .                    {next_state, open, State};                   true ->   A                    {next_state, loced, State#state{inputs = []}}               end;           false ->   A            {next_state, locked, State#state{inputs = NewInputs}}       end.5�_�   C   E           D   W        ����                                                                                                                                                                                                                                                                                                                P   .       X          X          V   P}x�P}x�     �   W   Y   �          �   W   Y   �    5�_�   D   F           E   X       ����                                                                                                                                                                                                                                                                                                                P   .       Y          Y          V   P}x�P}x�     �   W   Z   �          do_lock()5�_�   E   G           F   X       ����                                                                                                                                                                                                                                                                                                                P   .       Z          Z          V   P}x�P}x�     �   X   Z   �          {}�   W   Z   �          do_lock()5�_�   F   H           G   Y       ����                                                                                                                                                                                                                                                                                                                P   .       [          [          V   P}x�P}x�    �   X   Z   �          {next_state, locked, State}5�_�   G               H   X       ����                                                                                                                                                                                                                                                                                                                Y          [          [          V   P}yP}y    �   W   Y   �          do_lock(),5��