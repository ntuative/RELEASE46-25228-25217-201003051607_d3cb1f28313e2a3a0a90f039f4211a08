package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_533:RoomObjectLocationCacheItem = null;
      
      private var var_172:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_533 = new RoomObjectLocationCacheItem(param1);
         var_172 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_533;
      }
      
      public function dispose() : void
      {
         if(var_533 != null)
         {
            var_533.dispose();
            var_533 = null;
         }
         if(var_172 != null)
         {
            var_172.dispose();
            var_172 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_172;
      }
   }
}
