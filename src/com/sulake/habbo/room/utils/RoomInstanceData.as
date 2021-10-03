package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_847:LegacyWallGeometry = null;
      
      private var var_576:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_577:TileHeightMap = null;
      
      private var var_1990:String = null;
      
      private var _roomId:int = 0;
      
      private var var_848:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_847 = new LegacyWallGeometry();
         var_848 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_577 != null)
         {
            var_577.dispose();
         }
         var_577 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1990 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_847;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_848;
      }
      
      public function dispose() : void
      {
         if(var_577 != null)
         {
            var_577.dispose();
            var_577 = null;
         }
         if(var_847 != null)
         {
            var_847.dispose();
            var_847 = null;
         }
         if(var_848 != null)
         {
            var_848.dispose();
            var_848 = null;
         }
         if(var_576 != null)
         {
            var_576.dispose();
            var_576 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_577;
      }
      
      public function get worldType() : String
      {
         return var_1990;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_576 != null)
         {
            var_576.dispose();
         }
         var_576 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_576;
      }
   }
}
