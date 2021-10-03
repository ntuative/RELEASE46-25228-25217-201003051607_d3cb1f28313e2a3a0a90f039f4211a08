package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1389:String;
      
      private var var_923:String;
      
      private var var_1390:String;
      
      private var var_1391:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1391 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1389 = _loc5_[0];
         var_1390 = _loc5_[1];
         _name = param2;
         var_923 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1389;
      }
      
      public function get languageCode() : String
      {
         return var_1391;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_923;
      }
      
      public function get encoding() : String
      {
         return var_1390;
      }
      
      public function get id() : String
      {
         return var_1391 + "_" + var_1389 + "." + var_1390;
      }
   }
}
