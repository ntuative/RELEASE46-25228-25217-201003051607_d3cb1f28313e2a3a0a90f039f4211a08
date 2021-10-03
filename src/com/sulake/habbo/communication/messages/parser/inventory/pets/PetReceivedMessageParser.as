package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_958:PetData;
      
      private var var_1429:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1429 = param1.readBoolean();
         var_958 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1429 + ", " + var_958.id + ", " + var_958.name + ", " + pet.figure + ", " + var_958.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1429;
      }
      
      public function get pet() : PetData
      {
         return var_958;
      }
   }
}
