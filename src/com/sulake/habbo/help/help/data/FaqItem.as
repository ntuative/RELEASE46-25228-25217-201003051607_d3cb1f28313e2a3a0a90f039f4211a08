package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1115:int;
      
      private var var_1114:String;
      
      private var var_1700:String;
      
      private var _index:int;
      
      private var var_1701:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1115 = param1;
         var_1700 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1114;
      }
      
      public function get questionId() : int
      {
         return var_1115;
      }
      
      public function get questionText() : String
      {
         return var_1700;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1114 = param1;
         var_1701 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1701;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
