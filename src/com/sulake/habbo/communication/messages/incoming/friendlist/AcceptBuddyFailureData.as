package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1106:int;
      
      private var var_777:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_777 = param1.readString();
         this.var_1106 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_777;
      }
      
      public function get errorCode() : int
      {
         return this.var_1106;
      }
   }
}
