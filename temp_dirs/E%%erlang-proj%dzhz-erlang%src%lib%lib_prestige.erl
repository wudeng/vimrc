Vim�UnDo� �,��T�aͭg�ʇ�mU��.��|�z���`   �           �      G       G   G   GPea�Pea�    _�                            ����                                                                                                                                                                                                                                                                                                                J                                        Pe\�Pe\�     �                 5�_�                          ����                                                                                                                                                                                                                                                                                                                J                                        Pe]Pe]     �                get_salary_state()5�_�                          ����                                                                                                                                                                                                                                                                                                                J                             v   Pe])Pe])     �                    lib_user:get_user_attr5�_�                      +    ����                                                                                                                                                                                                                                                                                                                J                      *       v   Pe]+Pe]+     �                +    lib_user:get_user_attr_val( User, Key )5�_�                          ����                                                                                                                                                                                                                                                                                                                J                      *       v   Pe]3Pe]3     �            get_salary_state() ->5�_�                          ����                                                                                                                                                                                                                                                                                                                J                      *       v   Pe]6Pe]6     �                ,    lib_user:get_user_attr_val( User, Key ).5�_�                      %    ����                                                                                                                                                                                                                                                                                                                J                      *       v   Pe]9Pe]9     �                +    lib_user:get_user_attr_val(User, Key ).5�_�      	              �   5    ����                                                                                                                                                                                                                                                                                                                J                             v   Pe]�Pe]�     �   �   �                            �   �   �      5�_�      
           	   �       ����                                                                                                                                                                                                                                                                                                                J                             v   Pe]�Pe]�     �   �   �                              lib_user:5�_�   	              
   '        ����                                                                                                                                                                                                                                                                                                                �                            v   Pe]�Pe]�    �   &   (          +            [PrestigeInfo|List]            5�_�   
                 �   5    ����                                                                                                                                                                                                                                                                                                                �                                       Pe^@Pe^@     �   �   �                            �   �   �      5�_�                    �   F    ����                                                                                                                                                                                                                                                                                                                �                                       Pe^bPe^b     �   �   �        F                    lib_user:set_user_attr(User, [{?SALARY_STATE, 1}])5�_�                    �   +    ����                                                                                                                                                                                                                                                                                                                �          �   +       �   /       v   /Pe^�Pe^�     �   �   �        G                    lib_user:set_user_attr(User, [{?SALARY_STATE, 1}]),5�_�                    �   $    ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        E                    NewPlayerStatus=NewUser#ets_user{salary_state=1},5�_�                    �       ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        %                    NewPlayerStatus=,5�_�                    �       ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        +                    {ok, }NewPlayerStatus=,5�_�                    �   '    ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        *                    {ok, NewPlayerStatus=,5�_�                    �   *    ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        +                    {ok, NewPlayerStatus}=,5�_�                    �   )    ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        *                    {ok, NewPlayerStatus}=   J                    lib_user:set_user_attr(NewUser, [{?SALARY_STATE, 1}]),5�_�                    �   (    ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�     �   �   �        a                    {ok, NewPlayerStatus}= lib_user:set_user_attr(NewUser, [{?SALARY_STATE, 1}]),5�_�                    �   )    ����                                                                                                                                                                                                                                                                                                                �          �   $       �   D       v   DPe^�Pe^�    �   �   �        a                    {ok, NewPlayerStatus}= lib_user:set_user_attr(NewUser, [{?SALARY_STATE, 1}]),5�_�                    �   "    ����                                                                                                                                                                                                                                                                                                                �   )       �   $       �   D       v   DPe^�Pe^�     �   �   �        =                    SalaryState = User#ets_user.salary_state,5�_�                    �   "    ����                                                                                                                                                                                                                                                                                                                �   )       �   $       �   D       v   DPe^�Pe^�     �   �   �        "                    SalaryState = 5�_�                    �   8    ����                                                                                                                                                                                                                                                                                                                �   )       �   $       �   D       v   DPe^�Pe^�     �   �   �        8                    SalaryState = get_salary_state(User)5�_�                    �       ����                                                                                                                                                                                                                                                                                                                �   )       �   $       �   D       v   DPe^�Pe^�     �   �   �          /                    User#ets_user.salary_state,5�_�                    �       ����                                                                                                                                                                                                                                                                                                                �   )       �   $       �   D       v   DPe^�Pe^�     �   �   �          }            ?DEBUG(prestige,"not send salary state:~w,positionid:~w",[User#ets_user.salary_state,User#ets_user.position_id]),5�_�                    �       ����                                                                                                                                                                                                                                                                                                                �   )       �          �          v   Pe_ZPe_Z     �   �   �                    �   �   �      5�_�                    �       ����                                                                                                                                                                                                                                                                                                                �   )       �          �          v   Pe_bPe_b     �   �   �                    {ok, NewUser}5�_�                    �   L    ����                                                                                                                                                                                                                                                                                                                �   )       �          �          v   Pe_{Pe_{     �   �   �        N            {ok, NewUser} = lib_user:set_user_attr(User, [{?SALARY_STATE, 0}])5�_�                    �   h    ����                                                                                                                                                                                                                                                                                                                �   )       �          �          v   Pe_�Pe_�     �   �   �        j            {ok, NewUser} = lib_user:set_user_attr(User, [{?SALARY_STATE, 0}, {?SALARY_COIN, SalaryCoin}])5�_�                     �   �    ����                                                                                                                                                                                                                                                                                                                �   )       �          �          v   Pe_�Pe_�     �   �   �        �            {ok, NewUser} = lib_user:set_user_attr(User, [{?SALARY_STATE, 0}, {?SALARY_COIN, SalaryCoin}, {?SALARY_SPIRIT, SalarySpirit}])5�_�      !               �   9    ����                                                                                                                                                                                                                                                                                                                �   )       �          �          v   Pe_�Pe_�     �   �   �        �            {ok, NewUser} = lib_user:set_user_attr(User, [{?SALARY_STATE, 0}, {?SALARY_COIN, SalaryCoin}, {?SALARY_SPIRIT, SalarySpirit}]),5�_�       #           !   �        ����                                                                                                                                                                                                                                                                                                                �   )       �          �          V   Pe_�Pe_�     �   �   �          $            NewUser = User#ets_user{                   salary_state=0,   '                salary_coin=SalaryCoin,   ,                salary_spirit=SalarySpirit},5�_�   !   $   "       #   �       ����                                                                                                                                                                                                                                                                                                                �   )       �          �   6       v   6Pe_�Pe_�     �   �   �        6            SalaryState=NewUser#ets_user.salary_state,5�_�   #   %           $   �       ����                                                                                                                                                                                                                                                                                                                �   )       �          �   6       v   6Pe_�Pe_�     �   �   �                      5�_�   $   &           %   �   A    ����                                                                                                                                                                                                                                                                                                                �   )       �          �   6       v   6Pe_�Pe_�     �   �   �        O            {ok,BinData}=pt_16:write(?PP_PRESTIGE_SALARY_NOTICE,[SalaryState]),5�_�   %   '           &   �       ����                                                                                                                                                                                                                                                                                                                �   )       �          �   6       v   6Pe_�Pe_�     �   �   �          I            ?DEBUG(prestige,"0 dian send salary state:~w",[SalaryState]),5�_�   &   (           '   �        ����                                                                                                                                                                                                                                                                                                                �          �          �   6       v   6Pe_�Pe_�    �   �   �          9            {ok, NewUser} = lib_user:set_user_attr(User, 5�_�   '   )           (   �       ����                                                                                                                                                                                                                                                                                                                �          �          �   6       v   6Pe_�Pe_�    �   �   �          D    %%PrestigeInfo=get_prestige_template(User#ets_user.position_id),5�_�   (   *           )   �       ����                                                                                                                                                                                                                                                                                                                �           �          �   +       v   +Pe_�Pe_�     �   �   �        .            case User#ets_user.salary_state of5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                �                             V   Pe`9Pe`9     �              5�_�   *   ,           +         ����                                                                                                                                                                                                                                                                                                                �                             V   Pe`DPe`D     �            get_salary_state(User) ->5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                �                             V   Pe`JPe`J     �              5�_�   ,   .           -         ����                                                                                                                                                                                                                                                                                                                �                             V   Pe`MPe`M     �            get_salary_coin(User) ->5�_�   -   /           .     -    ����                                                                                                                                                                                                                                                                                                                �                             V   Pe`^Pe`^     �                4    lib_user:get_user_attr_val(User, ?SALARY_STATE).5�_�   .   0           /     -    ����                                                                                                                                                                                                                                                                                                                �                             V   Pe`dPe`d    �            4    lib_user:get_user_attr_val(User, ?SALARY_STATE).5�_�   /   1           0   >   J    ����                                                                                                                                                                                                                                                                                                                  0                         v   Pe`�Pe`�     �   >   @                                    �   >   @      5�_�   0   2           1   ?       ����                                                                                                                                                                                                                                                                                                                  0                         v   Pe`�Pe`�    �   >   ?          $                            get_sala5�_�   1   3           2   �       ����                                                                                                                                                                                                                                                                                                                ?          �          �   8       v   8Pe`�Pe`�     �   �   �        9                    SalaryCoin=User#ets_user.salary_coin,5�_�   2   4           3   �   !    ����                                                                                                                                                                                                                                                                                                                ?          �   !       �   <       v   <Pe`�Pe`�     �   �   �        =                    SalarySpirit=User#ets_user.salary_spirit,5�_�   3   5           4   �        ����                                                                                                                                                                                                                                                                                                                ?          �   !       �   <       v   <Pe`�Pe`�     �   �   �        9                    SalarySpirit=get_salary_spirit(User),5�_�   4   6           5   �   "    ����                                                                                                                                                                                                                                                                                                                ?          �   !       �   <       v   <Pe`�Pe`�     �   �   �        :                    SalarySpirit =get_salary_spirit(User),5�_�   5   7           6   �       ����                                                                                                                                                                                                                                                                                                                ?          �   !       �   <       v   <Pe`�Pe`�     �   �   �        5                    SalaryCoin=get_salary_coin(User),5�_�   6   8           7   �        ����                                                                                                                                                                                                                                                                                                                ?          �   !       �   <       v   <Pe`�Pe`�    �   �   �        6                    SalaryCoin =get_salary_coin(User),5�_�   7   9           8   �       ����                                                                                                                                                                                                                                                                                                                �           �   !       �   <       v   <Pe`�Pe`�     �   �   �        /            if User#ets_user.salary_coin > 0 ->5�_�   8   :           9   �       ����                                                                                                                                                                                                                                                                                                                �           �   !       �   <       v   <PeaPea     �   �   �                    �   �   �      5�_�   9   ;           :   �   .    ����                                                                                                                                                                                                                                                                                                                �           �   !       �   <       v   <Pea%Pea%     �   �   �        .            SalaryCoin = get_salary_coin(User)5�_�   :   <           ;   �       ����                                                                                                                                                                                                                                                                                                                �           �          �   )       v   )Pea,Pea,     �   �   �        0                User#ets_user.salary_coin > 0 ->5�_�   ;   =           <   �        ����                                                                                                                                                                                                                                                                                                                �          �          �   )       v   )Pea1Pea1    �   �   �                      if 5�_�   <   >           =   �        ����                                                                                                                                                                                                                                                                                                                �          �                    V   (Pea>Pea>     �   �   �       "    %%官职直接升到需要等级   .%@User,PosiontId 需要直接升到的官职ID   %@return NewUser   %%increase_position(User,PositionId)->   %    if   @%        User#ets_user.position_id=:=0 andalso PositionId > 0 ->   6%            case get_prestige_template(PositionId) of   V%                   PrestigeInfo when is_record(PrestigeInfo,ets_prestige_template) ->   V%                           SalaryCoin=PrestigeInfo#ets_prestige_template.salary_coin,   Z%                           SalarySpirit=PrestigeInfo#ets_prestige_template.salary_spirit,   2%                           NewUser=User#ets_user{   ?%                                       position_id=PositionId,   ?%                                       salary_coin=SalaryCoin,   B%                                       salary_spirit=SalarySpirit   ;%                                                        },   Z%                           NewUser1 = lib_user:add_cash(NewUser, 0,0, SalaryCoin,0, 100),   R%                           NewUser2 = lib_user:add_spirit(NewUser1,SalarySpirit),   ?%                             %%发送前端消息，更新User   W%                          {ok,BinData}=pt_16:write(?PP_PRESTIGE_UPGRADE,[PositionId]),   i%                          lib_send:send_to_sid( (NewUser#ets_user.other_data)#user_other.sid, BinData ),   ;%                          %%通知其他模块属性变更   d%                          RoleId=((NewUser1#ets_user.other_data)#user_other.main_role)#ets_role.id,   S%                          List=PrestigeInfo#ets_prestige_template.user_attr_extra,   f%                          lib_user:calc_total_attr(NewUser2,RoleId,?ATTR_CHGTYPE_PRESTIGE,List,true);   %                   _ ->   %                         User   %             end;   %        true->   #%            %%初始不是0J官职   %            User   	%    end.            5�_�   =   ?           >   �        ����                                                                                                                                                                                                                                                                                                                �          �           �           V    PeaAPeaA   	 �   �   �                           5�_�   >   @           ?   �        ����                                                                                                                                                                                                                                                                                                                �           �           �           V    PeaEPeaE     �   �   �   �       �   �   �   �    5�_�   ?   A           @   �       ����                                                                                                                                                                                                                                                                                                                �           �           �           V    PeaYPeaY     �   �   �   �       �   �   �   �    5�_�   @   B           A   �       ����                                                                                                                                                                                                                                                                                                                �           �           �           V    PeafPeaf   
 �   �   �   �       �   �   �   �    5�_�   A   C           B   J   P    ����                                                                                                                                                                                                                                                                                                                �          �           �           V    Pea�Pea�     �   I   L   �                                  ?DEBUG(prestige,"position_attr:~w,coin:~w,spirit~w",[(((NewPlayerStatus2#ets_user.other_data)#user_other.main_role)#ets_role.other_data)#role_other.position_attr,NewPlayerStatus2#ets_user.coin,NewPlayerStatus2#ets_user.spirit]),5�_�   B   D           C   K   �    ����                                                                                                                                                                                                                                                                                                                �          �           �           V    Pea�Pea�    �   J   M   �      �                                [(((NewPlayerStatus2#ets_user.other_data)#user_other.main_role)#ets_role.other_data)#role_other.position_attr,NewPlayerStatus2#ets_user.coin,NewPlayerStatus2#ets_user.spirit]),5�_�   C   E           D   z        ����                                                                                                                                                                                                                                                                                                                L   #       �           �           V    Pea�Pea�     �   y   z           5�_�   D   F           E   z        ����                                                                                                                                                                                                                                                                                                                L   #       �           �           V    Pea�Pea�     �   y   z           5�_�   E   G           F   z        ����                                                                                                                                                                                                                                                                                                                L   #       �           �           V    Pea�Pea�     �   y   z           5�_�   F               G   z        ����                                                                                                                                                                                                                                                                                                                L   #       �           �           V    Pea�Pea�    �   y   z           5�_�   !           #   "   �       ����                                                                                                                                                                                                                                                                                                                �   )       �          �          V   Pe_�Pe_�     �   �   �        5��