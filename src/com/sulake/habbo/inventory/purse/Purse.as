package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1831:Boolean = false;
      
      private var var_1827:int = 0;
      
      private var var_1830:int = 0;
      
      private var var_1828:int = 0;
      
      private var var_1570:int = 0;
      
      private var var_1829:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1570 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1827;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1831;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1831 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1827 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1830 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1570;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1828 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1830;
      }
      
      public function get pixelBalance() : int
      {
         return var_1828;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1829 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1829;
      }
   }
}
