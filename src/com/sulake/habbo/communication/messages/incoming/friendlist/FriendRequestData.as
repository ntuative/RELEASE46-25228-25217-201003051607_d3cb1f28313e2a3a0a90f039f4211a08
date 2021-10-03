package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1919:int;
      
      private var var_1920:String;
      
      private var var_1084:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1084 = param1.readInteger();
         this.var_1920 = param1.readString();
         this.var_1919 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1084;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1919;
      }
      
      public function get requesterName() : String
      {
         return this.var_1920;
      }
   }
}
