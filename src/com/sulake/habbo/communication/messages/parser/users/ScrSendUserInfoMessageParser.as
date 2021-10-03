package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2102:int;
      
      private var var_1181:String;
      
      private var var_2101:int;
      
      private var var_2100:int;
      
      private var var_2099:int;
      
      private var var_2103:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1181;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2103;
      }
      
      public function get responseType() : int
      {
         return var_2100;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2101;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1181 = param1.readString();
         var_2101 = param1.readInteger();
         var_2102 = param1.readInteger();
         var_2099 = param1.readInteger();
         var_2100 = param1.readInteger();
         var_2103 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2102;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2099;
      }
   }
}
