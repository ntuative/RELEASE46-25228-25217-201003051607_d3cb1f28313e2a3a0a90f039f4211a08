package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_336:Boolean;
      
      private var var_1130:int;
      
      private var var_1383:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1130 = param1.readInteger();
         var_1383 = param1.readString();
         var_336 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_336;
      }
      
      public function get nodeName() : String
      {
         return var_1383;
      }
      
      public function get nodeId() : int
      {
         return var_1130;
      }
   }
}
