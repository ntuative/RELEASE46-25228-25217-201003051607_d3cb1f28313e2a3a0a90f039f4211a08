package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1684:int;
      
      private var var_1111:PetData;
      
      private var var_1685:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1684;
      }
      
      public function get petData() : PetData
      {
         return var_1111;
      }
      
      public function flush() : Boolean
      {
         var_1111 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1685;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1684 = param1.readInteger();
         var_1685 = param1.readInteger();
         var_1111 = new PetData(param1);
         return true;
      }
   }
}
