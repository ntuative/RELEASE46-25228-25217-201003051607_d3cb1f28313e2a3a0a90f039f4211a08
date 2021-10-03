package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1778:Array;
      
      private var var_1777:String;
      
      private var var_1776:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1777 = param1;
         var_1778 = param2;
         var_1776 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1777;
      }
      
      public function get yieldList() : Array
      {
         return var_1778;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1776;
      }
   }
}
