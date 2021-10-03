package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1612:int;
      
      private var var_1761:int;
      
      private var var_1766:int;
      
      private var _type:int;
      
      private var var_1205:int = -1;
      
      private var var_1764:int;
      
      private var _nutrition:int;
      
      private var var_1765:int;
      
      private var _energy:int;
      
      private var var_2027:int;
      
      private var var_1767:int;
      
      private var var_1770:int;
      
      private var var_1769:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1763:Boolean;
      
      private var _name:String = "";
      
      private var var_1768:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1763;
      }
      
      public function get level() : int
      {
         return var_1612;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1765;
      }
      
      public function get id() : int
      {
         return var_1205;
      }
      
      public function get nutritionMax() : int
      {
         return var_1766;
      }
      
      public function get ownerId() : int
      {
         return var_1768;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1205 = param1.id;
         _type = param1.petType;
         var_2027 = param1.petRace;
         _image = param1.image;
         var_1763 = param1.isOwnPet;
         var_1768 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1612 = param1.level;
         var_1764 = param1.levelMax;
         var_1761 = param1.experience;
         var_1765 = param1.experienceMax;
         _energy = param1.energy;
         var_1767 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1766 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1770 = param1.roomIndex;
         var_1769 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1770;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1767;
      }
      
      public function get levelMax() : int
      {
         return var_1764;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2027;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1761;
      }
      
      public function get age() : int
      {
         return var_1769;
      }
   }
}
