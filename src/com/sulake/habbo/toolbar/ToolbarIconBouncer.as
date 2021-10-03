package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1616:Number;
      
      private var var_533:Number = 0;
      
      private var var_1615:Number;
      
      private var var_532:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1616 = param1;
         var_1615 = param2;
      }
      
      public function update() : void
      {
         var_532 += var_1615;
         var_533 += var_532;
         if(var_533 > 0)
         {
            var_533 = 0;
            var_532 = var_1616 * -1 * var_532;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_532 = param1;
         var_533 = 0;
      }
      
      public function get location() : Number
      {
         return var_533;
      }
   }
}
