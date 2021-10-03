package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_968:int;
      
      private var var_1905:int;
      
      private var var_1476:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1476 = param1.readInteger();
         var_1905 = param1.readInteger();
         var_968 = param1.readInteger();
         var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1476);
      }
      
      public function get reportedUserId() : int
      {
         return var_968;
      }
      
      public function get callerUserId() : int
      {
         return var_1905;
      }
      
      public function get callId() : int
      {
         return var_1476;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_112;
      }
   }
}
