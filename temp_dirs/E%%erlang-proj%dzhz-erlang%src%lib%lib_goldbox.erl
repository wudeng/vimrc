Vim�UnDo� �H��Jn{�ʅ�a�� �v�bWMv�st�   �           G                   P���P���    _�                     E   G    ����                                                                                                                                                                                                                                                                                                                            E   G       E   P       v   PP��dP��d     �   D   F   �      W            lib_open_reward:give_open_reward(User2#ets_user.id, 12028, OldCount+Count),5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            E   G       E   P       v   PP��P��     �   C   D          W            OldCount = lib_event_progress:get_progress_value(User2, ?EVENT_TOUCH_GOLD),5�_�                             ����                                                                                                                                                                                                                                                                                                                E   E       D   G       D   P       v   PP���P���    �   �   �          (       MoJinFuCount - TempMoJinFuCount, �   �   �          #	log( {UserId,NickName,Time,Type}, �   �   �          ?            srv_item_lib:get_item_name_by_tpl_id( ItemId ), 1, �   �   �          <    Msg = { t_log_goldbox, 0, UserId, NickName, Time, Type, �      �                  R -> �   p   r          '%% @Param  : TouchCount   摸金次数 �   j   l          
		true -> �   h   j          0        RandData =< H#ets_goldbox.rate + Sum -> �   g   i              if �   _   a          		    {_, _, Num} -> �   ]   _          		    false -> �   F   H                  _R -> �   5   7          j                {User0#ets_user.gold - User2#ets_user.gold, User0#ets_user.bgold - User2#ets_user.bgold}, �   4   6                          MoJinConsume, �   3   5          K            log({User2#ets_user.id, User2#ets_user.nick_name, Time, Type}, �   (   *          		 _ -> �                +                       ReturnList, Record) 5��