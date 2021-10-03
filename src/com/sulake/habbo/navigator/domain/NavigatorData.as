package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1402:int = 10;
       
      
      private var var_1425:NavigatorSettingsMessageParser;
      
      private var var_1150:int;
      
      private var var_1723:int;
      
      private var var_1726:Boolean;
      
      private var var_953:Array;
      
      private var var_780:Dictionary;
      
      private var var_952:Array;
      
      private var var_2280:int;
      
      private var var_1721:int;
      
      private var var_1727:int;
      
      private var var_1722:int;
      
      private var var_549:PublicRoomShortData;
      
      private var var_381:RoomEventData;
      
      private var var_127:MsgWithRequestId;
      
      private var var_1725:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1724:Boolean;
      
      private var var_187:GuestRoomData;
      
      private var var_644:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_953 = new Array();
         var_952 = new Array();
         var_780 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1723;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1724;
      }
      
      public function startLoading() : void
      {
         this.var_644 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1724 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_381 != null)
         {
            var_381.dispose();
         }
         var_381 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_127 != null && var_127 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_127 != null && var_127 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_127 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_187;
      }
      
      public function get allCategories() : Array
      {
         return var_953;
      }
      
      public function onRoomExit() : void
      {
         if(var_381 != null)
         {
            var_381.dispose();
            var_381 = null;
         }
         if(var_549 != null)
         {
            var_549.dispose();
            var_549 = null;
         }
         if(var_187 != null)
         {
            var_187.dispose();
            var_187 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_127 = param1;
         var_644 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1425;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_127 = param1;
         var_644 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_549 = null;
         var_187 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_549 = param1.publicSpace;
            var_381 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2280 = param1.limit;
         this.var_1150 = param1.favouriteRoomIds.length;
         this.var_780 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_780[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_127 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_549;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1726;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_127 = param1;
         var_644 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_187 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_644;
      }
      
      public function get visibleCategories() : Array
      {
         return var_952;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_953 = param1;
         var_952 = new Array();
         for each(_loc2_ in var_953)
         {
            if(_loc2_.visible)
            {
               var_952.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1721;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1722;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1425 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_127 == null)
         {
            return;
         }
         var_127.dispose();
         var_127 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_381;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_780[param1] = !!param2 ? "yes" : null;
         var_1150 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_127 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1727;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_127 != null && var_127 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1726 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1721 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1725 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_187 != null)
         {
            var_187.dispose();
         }
         var_187 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_187 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1425.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1150 >= var_2280;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1722 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1725;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_187 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1723 = param1;
      }
   }
}
