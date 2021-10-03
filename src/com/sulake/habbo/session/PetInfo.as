package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1612:int;
      
      private var var_1684:int;
      
      private var var_1761:int;
      
      private var var_1766:int;
      
      private var _nutrition:int;
      
      private var var_1205:int;
      
      private var var_1764:int;
      
      private var var_1765:int;
      
      private var _energy:int;
      
      private var var_1769:int;
      
      private var var_1767:int;
      
      private var _ownerName:String;
      
      private var var_1768:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1612;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1684 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1612 = param1;
      }
      
      public function get petId() : int
      {
         return var_1205;
      }
      
      public function get experienceMax() : int
      {
         return var_1765;
      }
      
      public function get nutritionMax() : int
      {
         return var_1766;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1768;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1205 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1767;
      }
      
      public function get respect() : int
      {
         return var_1684;
      }
      
      public function get levelMax() : int
      {
         return var_1764;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1761 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1768 = param1;
      }
      
      public function get experience() : int
      {
         return var_1761;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1767 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1769 = param1;
      }
      
      public function get age() : int
      {
         return var_1769;
      }
   }
}
