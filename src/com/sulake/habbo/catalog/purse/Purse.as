package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1830:int = 0;
      
      private var var_1935:int = 0;
      
      private var var_1712:int = 0;
      
      private var var_1829:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1935;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1935 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1830 = param1;
      }
      
      public function get credits() : int
      {
         return var_1712;
      }
      
      public function get clubDays() : int
      {
         return var_1830;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1829 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1712 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1829;
      }
   }
}
