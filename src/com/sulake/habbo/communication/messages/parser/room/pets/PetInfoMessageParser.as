package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1769:int;
      
      private var var_556:String;
      
      private var var_1612:int;
      
      private var var_1684:int;
      
      private var var_1761:int;
      
      private var var_2008:int;
      
      private var _nutrition:int;
      
      private var var_1205:int;
      
      private var var_2009:int;
      
      private var var_2010:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1768:int;
      
      private var var_2011:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2008;
      }
      
      public function flush() : Boolean
      {
         var_1205 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2009;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2010;
      }
      
      public function get maxNutrition() : int
      {
         return var_2011;
      }
      
      public function get figure() : String
      {
         return var_556;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1684;
      }
      
      public function get petId() : int
      {
         return var_1205;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1205 = param1.readInteger();
         _name = param1.readString();
         var_1612 = param1.readInteger();
         var_2009 = param1.readInteger();
         var_1761 = param1.readInteger();
         var_2010 = param1.readInteger();
         _energy = param1.readInteger();
         var_2008 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2011 = param1.readInteger();
         var_556 = param1.readString();
         var_1684 = param1.readInteger();
         var_1768 = param1.readInteger();
         var_1769 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1761;
      }
      
      public function get ownerId() : int
      {
         return var_1768;
      }
      
      public function get age() : int
      {
         return var_1769;
      }
   }
}
