package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_174:String;
      
      private var var_395:int;
      
      private var var_185:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_174 = param1;
         var_185 = param2;
         var_395 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_185.text = var_174.substring(0,param1) + "...";
         return var_185.textHeight > var_395;
      }
   }
}
