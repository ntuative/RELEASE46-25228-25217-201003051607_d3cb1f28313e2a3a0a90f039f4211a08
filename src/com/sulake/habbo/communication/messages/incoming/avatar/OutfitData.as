package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1749:String;
      
      private var var_984:String;
      
      private var var_1750:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1750 = param1.readInteger();
         var_1749 = param1.readString();
         var_984 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_984;
      }
      
      public function get figureString() : String
      {
         return var_1749;
      }
      
      public function get slotId() : int
      {
         return var_1750;
      }
   }
}
