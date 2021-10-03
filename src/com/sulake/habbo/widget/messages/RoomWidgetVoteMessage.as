package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_125:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1217:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_125);
         var_1217 = param1;
      }
      
      public function get vote() : int
      {
         return var_1217;
      }
   }
}
