package;


import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.MovieClip;
import flash.text.Font;
import flash.media.Sound;
import flash.net.URLRequest;
import flash.utils.ByteArray;
import haxe.Unserializer;
import openfl.Assets;

#if (flash || js)
import flash.display.Loader;
import flash.events.Event;
import flash.net.URLLoader;
#end

#if ios
import openfl.utils.SystemPath;
#end


@:access(flash.media.Sound)
class DefaultAssetLibrary extends AssetLibrary {
	
	
	public static var className (default, null) = new Map <String, Dynamic> ();
	public static var path (default, null) = new Map <String, String> ();
	public static var type (default, null) = new Map <String, AssetType> ();
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/bubble.png", __ASSET__assets_images_bubble_png);
		type.set ("assets/images/bubble.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark.png", __ASSET__assets_images_hammershark_png);
		type.set ("assets/images/hammershark.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_leader.png", __ASSET__assets_images_hammershark_leader_png);
		type.set ("assets/images/hammershark_leader.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_leader_spritesheet.png", __ASSET__assets_images_hammershark_leader_spritesheet_png);
		type.set ("assets/images/hammershark_leader_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/hammershark_small.png", __ASSET__assets_images_hammershark_small_png);
		type.set ("assets/images/hammershark_small.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_small_1_spritesheet.png", __ASSET__assets_images_hammershark_small_1_spritesheet_png);
		type.set ("assets/images/hammershark_small_1_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/hammershark_small_2_spritesheet.png", __ASSET__assets_images_hammershark_small_2_spritesheet_png);
		type.set ("assets/images/hammershark_small_2_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/hammershark_small_3_spritesheet.png", __ASSET__assets_images_hammershark_small_3_spritesheet_png);
		type.set ("assets/images/hammershark_small_3_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/hammershark_small_4_spritesheet.png", __ASSET__assets_images_hammershark_small_4_spritesheet_png);
		type.set ("assets/images/hammershark_small_4_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/hammershark_small_leader_spritesheet.png", __ASSET__assets_images_hammershark_small_leader_spritesheet_png);
		type.set ("assets/images/hammershark_small_leader_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/rock.png", __ASSET__assets_images_rock_png);
		type.set ("assets/images/rock.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/Untitled.png", __ASSET__assets_images_untitled_png);
		type.set ("assets/images/Untitled.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.png", __ASSET__assets_images_wave_big_spritesheet_png);
		type.set ("assets/images/wave_big_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/0.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_0_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/1.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_1_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/2.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_2_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/3.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_3_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/4.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_4_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/4.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/5.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_5_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/5.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet.pxa/CelData.plist", __ASSET__assets_images_wave_big_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/wave_big_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_2.png", __ASSET__assets_images_wave_big_spritesheet_2_png);
		type.set ("assets/images/wave_big_spritesheet_2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/0.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_0_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/1.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_1_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/2.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_2_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/3.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_3_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/4.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_4_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/4.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/5.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_5_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/5.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/CelData.plist", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_celdata_plist);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.png", __ASSET__assets_images_wave_spritesheet_png);
		type.set ("assets/images/wave_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/0.pxi", __ASSET__assets_images_wave_spritesheet_pxa_0_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/1.pxi", __ASSET__assets_images_wave_spritesheet_pxa_1_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/2.pxi", __ASSET__assets_images_wave_spritesheet_pxa_2_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/3.pxi", __ASSET__assets_images_wave_spritesheet_pxa_3_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/4.pxi", __ASSET__assets_images_wave_spritesheet_pxa_4_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/4.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/5.pxi", __ASSET__assets_images_wave_spritesheet_pxa_5_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/5.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("assets/images/wave_spritesheet.pxa/CelData.plist", __ASSET__assets_images_wave_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/wave_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		
		#elseif html5
		
		addExternal("assets/data/data-goes-here.txt", "text", "assets/data/data-goes-here.txt");
		addExternal("assets/images/bubble.png", "image", "assets/images/bubble.png");
		addExternal("assets/images/hammershark.png", "image", "assets/images/hammershark.png");
		addExternal("assets/images/hammershark_leader.png", "image", "assets/images/hammershark_leader.png");
		addExternal("assets/images/hammershark_leader_spritesheet.png", "image", "assets/images/hammershark_leader_spritesheet.png");
		addExternal("assets/images/hammershark_leader_spritesheet.pxa/0.pxi", "binary", "assets/images/hammershark_leader_spritesheet.pxa/0.pxi");
		addExternal("assets/images/hammershark_leader_spritesheet.pxa/1.pxi", "binary", "assets/images/hammershark_leader_spritesheet.pxa/1.pxi");
		addExternal("assets/images/hammershark_leader_spritesheet.pxa/2.pxi", "binary", "assets/images/hammershark_leader_spritesheet.pxa/2.pxi");
		addExternal("assets/images/hammershark_leader_spritesheet.pxa/3.pxi", "binary", "assets/images/hammershark_leader_spritesheet.pxa/3.pxi");
		addExternal("assets/images/hammershark_leader_spritesheet.pxa/CelData.plist", "text", "assets/images/hammershark_leader_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/hammershark_small.png", "image", "assets/images/hammershark_small.png");
		addExternal("assets/images/hammershark_small_1_spritesheet.png", "image", "assets/images/hammershark_small_1_spritesheet.png");
		addExternal("assets/images/hammershark_small_1_spritesheet.pxa/0.pxi", "binary", "assets/images/hammershark_small_1_spritesheet.pxa/0.pxi");
		addExternal("assets/images/hammershark_small_1_spritesheet.pxa/1.pxi", "binary", "assets/images/hammershark_small_1_spritesheet.pxa/1.pxi");
		addExternal("assets/images/hammershark_small_1_spritesheet.pxa/2.pxi", "binary", "assets/images/hammershark_small_1_spritesheet.pxa/2.pxi");
		addExternal("assets/images/hammershark_small_1_spritesheet.pxa/3.pxi", "binary", "assets/images/hammershark_small_1_spritesheet.pxa/3.pxi");
		addExternal("assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist", "text", "assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/hammershark_small_2_spritesheet.png", "image", "assets/images/hammershark_small_2_spritesheet.png");
		addExternal("assets/images/hammershark_small_2_spritesheet.pxa/0.pxi", "binary", "assets/images/hammershark_small_2_spritesheet.pxa/0.pxi");
		addExternal("assets/images/hammershark_small_2_spritesheet.pxa/1.pxi", "binary", "assets/images/hammershark_small_2_spritesheet.pxa/1.pxi");
		addExternal("assets/images/hammershark_small_2_spritesheet.pxa/2.pxi", "binary", "assets/images/hammershark_small_2_spritesheet.pxa/2.pxi");
		addExternal("assets/images/hammershark_small_2_spritesheet.pxa/3.pxi", "binary", "assets/images/hammershark_small_2_spritesheet.pxa/3.pxi");
		addExternal("assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist", "text", "assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/hammershark_small_3_spritesheet.png", "image", "assets/images/hammershark_small_3_spritesheet.png");
		addExternal("assets/images/hammershark_small_3_spritesheet.pxa/0.pxi", "binary", "assets/images/hammershark_small_3_spritesheet.pxa/0.pxi");
		addExternal("assets/images/hammershark_small_3_spritesheet.pxa/1.pxi", "binary", "assets/images/hammershark_small_3_spritesheet.pxa/1.pxi");
		addExternal("assets/images/hammershark_small_3_spritesheet.pxa/2.pxi", "binary", "assets/images/hammershark_small_3_spritesheet.pxa/2.pxi");
		addExternal("assets/images/hammershark_small_3_spritesheet.pxa/3.pxi", "binary", "assets/images/hammershark_small_3_spritesheet.pxa/3.pxi");
		addExternal("assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist", "text", "assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/hammershark_small_4_spritesheet.png", "image", "assets/images/hammershark_small_4_spritesheet.png");
		addExternal("assets/images/hammershark_small_4_spritesheet.pxa/0.pxi", "binary", "assets/images/hammershark_small_4_spritesheet.pxa/0.pxi");
		addExternal("assets/images/hammershark_small_4_spritesheet.pxa/1.pxi", "binary", "assets/images/hammershark_small_4_spritesheet.pxa/1.pxi");
		addExternal("assets/images/hammershark_small_4_spritesheet.pxa/2.pxi", "binary", "assets/images/hammershark_small_4_spritesheet.pxa/2.pxi");
		addExternal("assets/images/hammershark_small_4_spritesheet.pxa/3.pxi", "binary", "assets/images/hammershark_small_4_spritesheet.pxa/3.pxi");
		addExternal("assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist", "text", "assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/hammershark_small_leader_spritesheet.png", "image", "assets/images/hammershark_small_leader_spritesheet.png");
		addExternal("assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi", "binary", "assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi");
		addExternal("assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi", "binary", "assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi");
		addExternal("assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi", "binary", "assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi");
		addExternal("assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi", "binary", "assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi");
		addExternal("assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist", "text", "assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/images-go-here.txt", "text", "assets/images/images-go-here.txt");
		addExternal("assets/images/rock.png", "image", "assets/images/rock.png");
		addExternal("assets/images/Untitled.png", "image", "assets/images/Untitled.png");
		addExternal("assets/images/wave_big_spritesheet.png", "image", "assets/images/wave_big_spritesheet.png");
		addExternal("assets/images/wave_big_spritesheet.pxa/0.pxi", "binary", "assets/images/wave_big_spritesheet.pxa/0.pxi");
		addExternal("assets/images/wave_big_spritesheet.pxa/1.pxi", "binary", "assets/images/wave_big_spritesheet.pxa/1.pxi");
		addExternal("assets/images/wave_big_spritesheet.pxa/2.pxi", "binary", "assets/images/wave_big_spritesheet.pxa/2.pxi");
		addExternal("assets/images/wave_big_spritesheet.pxa/3.pxi", "binary", "assets/images/wave_big_spritesheet.pxa/3.pxi");
		addExternal("assets/images/wave_big_spritesheet.pxa/4.pxi", "binary", "assets/images/wave_big_spritesheet.pxa/4.pxi");
		addExternal("assets/images/wave_big_spritesheet.pxa/5.pxi", "binary", "assets/images/wave_big_spritesheet.pxa/5.pxi");
		addExternal("assets/images/wave_big_spritesheet.pxa/CelData.plist", "text", "assets/images/wave_big_spritesheet.pxa/CelData.plist");
		addExternal("assets/images/wave_big_spritesheet_2.png", "image", "assets/images/wave_big_spritesheet_2.png");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/0.pxi", "binary", "assets/images/wave_big_spritesheet_mod.pxa/0.pxi");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/1.pxi", "binary", "assets/images/wave_big_spritesheet_mod.pxa/1.pxi");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/2.pxi", "binary", "assets/images/wave_big_spritesheet_mod.pxa/2.pxi");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/3.pxi", "binary", "assets/images/wave_big_spritesheet_mod.pxa/3.pxi");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/4.pxi", "binary", "assets/images/wave_big_spritesheet_mod.pxa/4.pxi");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/5.pxi", "binary", "assets/images/wave_big_spritesheet_mod.pxa/5.pxi");
		addExternal("assets/images/wave_big_spritesheet_mod.pxa/CelData.plist", "text", "assets/images/wave_big_spritesheet_mod.pxa/CelData.plist");
		addExternal("assets/images/wave_spritesheet.png", "image", "assets/images/wave_spritesheet.png");
		addExternal("assets/images/wave_spritesheet.pxa/0.pxi", "binary", "assets/images/wave_spritesheet.pxa/0.pxi");
		addExternal("assets/images/wave_spritesheet.pxa/1.pxi", "binary", "assets/images/wave_spritesheet.pxa/1.pxi");
		addExternal("assets/images/wave_spritesheet.pxa/2.pxi", "binary", "assets/images/wave_spritesheet.pxa/2.pxi");
		addExternal("assets/images/wave_spritesheet.pxa/3.pxi", "binary", "assets/images/wave_spritesheet.pxa/3.pxi");
		addExternal("assets/images/wave_spritesheet.pxa/4.pxi", "binary", "assets/images/wave_spritesheet.pxa/4.pxi");
		addExternal("assets/images/wave_spritesheet.pxa/5.pxi", "binary", "assets/images/wave_spritesheet.pxa/5.pxi");
		addExternal("assets/images/wave_spritesheet.pxa/CelData.plist", "text", "assets/images/wave_spritesheet.pxa/CelData.plist");
		addExternal("assets/music/music-goes-here.txt", "text", "assets/music/music-goes-here.txt");
		addExternal("assets/sounds/sounds-go-here.txt", "text", "assets/sounds/sounds-go-here.txt");
		
		
		#else
		
		#if (windows || mac || linux)
		
		var loadManifest = false;
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/bubble.png", __ASSET__assets_images_bubble_png);
		type.set ("assets/images/bubble.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark.png", __ASSET__assets_images_hammershark_png);
		type.set ("assets/images/hammershark.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader.png", __ASSET__assets_images_hammershark_leader_png);
		type.set ("assets/images/hammershark_leader.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader_spritesheet.png", __ASSET__assets_images_hammershark_leader_spritesheet_png);
		type.set ("assets/images/hammershark_leader_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_leader_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_leader_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_leader_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small.png", __ASSET__assets_images_hammershark_small_png);
		type.set ("assets/images/hammershark_small.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_1_spritesheet.png", __ASSET__assets_images_hammershark_small_1_spritesheet_png);
		type.set ("assets/images/hammershark_small_1_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_2_spritesheet.png", __ASSET__assets_images_hammershark_small_2_spritesheet_png);
		type.set ("assets/images/hammershark_small_2_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_3_spritesheet.png", __ASSET__assets_images_hammershark_small_3_spritesheet_png);
		type.set ("assets/images/hammershark_small_3_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_4_spritesheet.png", __ASSET__assets_images_hammershark_small_4_spritesheet_png);
		type.set ("assets/images/hammershark_small_4_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_leader_spritesheet.png", __ASSET__assets_images_hammershark_small_leader_spritesheet_png);
		type.set ("assets/images/hammershark_small_leader_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_0_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_1_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_2_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_3_pxi);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist", __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/rock.png", __ASSET__assets_images_rock_png);
		type.set ("assets/images/rock.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/Untitled.png", __ASSET__assets_images_untitled_png);
		type.set ("assets/images/Untitled.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.png", __ASSET__assets_images_wave_big_spritesheet_png);
		type.set ("assets/images/wave_big_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/0.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_0_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/1.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_1_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/2.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_2_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/3.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_3_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/4.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_4_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/4.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/5.pxi", __ASSET__assets_images_wave_big_spritesheet_pxa_5_pxi);
		type.set ("assets/images/wave_big_spritesheet.pxa/5.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet.pxa/CelData.plist", __ASSET__assets_images_wave_big_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/wave_big_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_2.png", __ASSET__assets_images_wave_big_spritesheet_2_png);
		type.set ("assets/images/wave_big_spritesheet_2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/0.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_0_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/1.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_1_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/2.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_2_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/3.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_3_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/4.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_4_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/4.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/5.pxi", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_5_pxi);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/5.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_big_spritesheet_mod.pxa/CelData.plist", __ASSET__assets_images_wave_big_spritesheet_mod_pxa_celdata_plist);
		type.set ("assets/images/wave_big_spritesheet_mod.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.png", __ASSET__assets_images_wave_spritesheet_png);
		type.set ("assets/images/wave_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/0.pxi", __ASSET__assets_images_wave_spritesheet_pxa_0_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/0.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/1.pxi", __ASSET__assets_images_wave_spritesheet_pxa_1_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/1.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/2.pxi", __ASSET__assets_images_wave_spritesheet_pxa_2_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/2.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/3.pxi", __ASSET__assets_images_wave_spritesheet_pxa_3_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/3.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/4.pxi", __ASSET__assets_images_wave_spritesheet_pxa_4_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/4.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/5.pxi", __ASSET__assets_images_wave_spritesheet_pxa_5_pxi);
		type.set ("assets/images/wave_spritesheet.pxa/5.pxi", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		className.set ("assets/images/wave_spritesheet.pxa/CelData.plist", __ASSET__assets_images_wave_spritesheet_pxa_celdata_plist);
		type.set ("assets/images/wave_spritesheet.pxa/CelData.plist", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		
		#else
		
		var loadManifest = true;
		
		#end
		
		if (loadManifest) {
			try {
				
				#if blackberry
				var bytes = ByteArray.readFile ("app/native/manifest");
				#elseif tizen
				var bytes = ByteArray.readFile ("../res/manifest");
				#elseif emscripten
				var bytes = ByteArray.readFile ("assets/manifest");
				#else
				var bytes = ByteArray.readFile ("manifest");
				#end
				
				if (bytes != null) {
					
					bytes.position = 0;
					
					if (bytes.length > 0) {
						
						var data = bytes.readUTFBytes (bytes.length);
						
						if (data != null && data.length > 0) {
							
							var manifest:Array<AssetData> = Unserializer.run (data);
							
							for (asset in manifest) {
								
								if (!className.exists(asset.id)) {
									
									path.set (asset.id, asset.path);
									type.set (asset.id, asset.type);
									
								}
							}
						
						}
					
					}
				
				} else {
				
					trace ("Warning: Could not load asset manifest");
				
				}
			
			} catch (e:Dynamic) {
			
				trace ("Warning: Could not load asset manifest");
			
			}
		
		}
		
		#end
		
	}
	
	
	#if html5
	private function addEmbed(id:String, kind:String, value:Dynamic):Void {
		className.set(id, value);
		type.set(id, Reflect.field(AssetType, kind.toUpperCase()));
	}
	
	
	private function addExternal(id:String, kind:String, value:String):Void {
		path.set(id, value);
		type.set(id, Reflect.field(AssetType, kind.toUpperCase()));
	}
	#end
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = DefaultAssetLibrary.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif openfl_html5
		
		return BitmapData.fromImage (ApplicationMain.images.get (path.get (id)));
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), BitmapData);
		else return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif openfl_html5
		
		return null;
		
		#elseif js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists(id)) {
			var fontClass = className.get(id);
			Font.registerFont(fontClass);
			return cast (Type.createInstance (fontClass, []), Font);
		} else return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		var sound = new Sound ();
		sound.__buffer = true;
		sound.load (new URLRequest (path.get (id)));
		return sound; 
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		#if js
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}
		
		#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash

@:keep class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_bubble_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_leader_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_leader_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_small_1_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_2_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_3_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_4_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_leader_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_rock_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_untitled_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_wave_big_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_4_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_5_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_4_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_5_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_0_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_1_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_2_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_3_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_4_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_5_pxi extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_images_wave_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }


#elseif html5









































































#elseif (windows || mac || linux)


@:file("assets/data/data-goes-here.txt") class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray {}
@:bitmap("assets/images/bubble.png") class __ASSET__assets_images_bubble_png extends flash.display.BitmapData {}
@:bitmap("assets/images/hammershark.png") class __ASSET__assets_images_hammershark_png extends flash.display.BitmapData {}
@:bitmap("assets/images/hammershark_leader.png") class __ASSET__assets_images_hammershark_leader_png extends flash.display.BitmapData {}
@:bitmap("assets/images/hammershark_leader_spritesheet.png") class __ASSET__assets_images_hammershark_leader_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/hammershark_leader_spritesheet.pxa/0.pxi") class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_leader_spritesheet.pxa/1.pxi") class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_leader_spritesheet.pxa/2.pxi") class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_leader_spritesheet.pxa/3.pxi") class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_leader_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_hammershark_leader_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/hammershark_small.png") class __ASSET__assets_images_hammershark_small_png extends flash.display.BitmapData {}
@:bitmap("assets/images/hammershark_small_1_spritesheet.png") class __ASSET__assets_images_hammershark_small_1_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/hammershark_small_1_spritesheet.pxa/0.pxi") class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_1_spritesheet.pxa/1.pxi") class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_1_spritesheet.pxa/2.pxi") class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_1_spritesheet.pxa/3.pxi") class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_1_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_hammershark_small_1_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/hammershark_small_2_spritesheet.png") class __ASSET__assets_images_hammershark_small_2_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/hammershark_small_2_spritesheet.pxa/0.pxi") class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_2_spritesheet.pxa/1.pxi") class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_2_spritesheet.pxa/2.pxi") class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_2_spritesheet.pxa/3.pxi") class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_2_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_hammershark_small_2_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/hammershark_small_3_spritesheet.png") class __ASSET__assets_images_hammershark_small_3_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/hammershark_small_3_spritesheet.pxa/0.pxi") class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_3_spritesheet.pxa/1.pxi") class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_3_spritesheet.pxa/2.pxi") class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_3_spritesheet.pxa/3.pxi") class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_3_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_hammershark_small_3_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/hammershark_small_4_spritesheet.png") class __ASSET__assets_images_hammershark_small_4_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/hammershark_small_4_spritesheet.pxa/0.pxi") class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_4_spritesheet.pxa/1.pxi") class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_4_spritesheet.pxa/2.pxi") class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_4_spritesheet.pxa/3.pxi") class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_4_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_hammershark_small_4_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/hammershark_small_leader_spritesheet.png") class __ASSET__assets_images_hammershark_small_leader_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/hammershark_small_leader_spritesheet.pxa/0.pxi") class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_leader_spritesheet.pxa/1.pxi") class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_leader_spritesheet.pxa/2.pxi") class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_leader_spritesheet.pxa/3.pxi") class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/hammershark_small_leader_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_hammershark_small_leader_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:file("assets/images/images-go-here.txt") class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray {}
@:bitmap("assets/images/rock.png") class __ASSET__assets_images_rock_png extends flash.display.BitmapData {}
@:bitmap("assets/images/Untitled.png") class __ASSET__assets_images_untitled_png extends flash.display.BitmapData {}
@:bitmap("assets/images/wave_big_spritesheet.png") class __ASSET__assets_images_wave_big_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/wave_big_spritesheet.pxa/0.pxi") class __ASSET__assets_images_wave_big_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet.pxa/1.pxi") class __ASSET__assets_images_wave_big_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet.pxa/2.pxi") class __ASSET__assets_images_wave_big_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet.pxa/3.pxi") class __ASSET__assets_images_wave_big_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet.pxa/4.pxi") class __ASSET__assets_images_wave_big_spritesheet_pxa_4_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet.pxa/5.pxi") class __ASSET__assets_images_wave_big_spritesheet_pxa_5_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_wave_big_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/wave_big_spritesheet_2.png") class __ASSET__assets_images_wave_big_spritesheet_2_png extends flash.display.BitmapData {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/0.pxi") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/1.pxi") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/2.pxi") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/3.pxi") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/4.pxi") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_4_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/5.pxi") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_5_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_big_spritesheet_mod.pxa/CelData.plist") class __ASSET__assets_images_wave_big_spritesheet_mod_pxa_celdata_plist extends flash.utils.ByteArray {}
@:bitmap("assets/images/wave_spritesheet.png") class __ASSET__assets_images_wave_spritesheet_png extends flash.display.BitmapData {}
@:file("assets/images/wave_spritesheet.pxa/0.pxi") class __ASSET__assets_images_wave_spritesheet_pxa_0_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_spritesheet.pxa/1.pxi") class __ASSET__assets_images_wave_spritesheet_pxa_1_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_spritesheet.pxa/2.pxi") class __ASSET__assets_images_wave_spritesheet_pxa_2_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_spritesheet.pxa/3.pxi") class __ASSET__assets_images_wave_spritesheet_pxa_3_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_spritesheet.pxa/4.pxi") class __ASSET__assets_images_wave_spritesheet_pxa_4_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_spritesheet.pxa/5.pxi") class __ASSET__assets_images_wave_spritesheet_pxa_5_pxi extends flash.utils.ByteArray {}
@:file("assets/images/wave_spritesheet.pxa/CelData.plist") class __ASSET__assets_images_wave_spritesheet_pxa_celdata_plist extends flash.utils.ByteArray {}
@:file("assets/music/music-goes-here.txt") class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray {}
@:file("assets/sounds/sounds-go-here.txt") class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray {}


#end
