package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1720:int;
      
      private var var_1620:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1620 = param1.readString();
         this.var_1720 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1720;
      }
      
      public function get tag() : String
      {
         return this.var_1620;
      }
   }
}
