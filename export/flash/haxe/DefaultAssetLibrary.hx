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
		className.set ("assets/images/ExplosionParticle.png", __ASSET__assets_images_explosionparticle_png);
		type.set ("assets/images/ExplosionParticle.png", Reflect.field (AssetType, "image".toUpperCase ()));
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
		className.set ("assets/images/simple_ship.png", __ASSET__assets_images_simple_ship_png);
		type.set ("assets/images/simple_ship.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/simple_ship_1.png", __ASSET__assets_images_simple_ship_1_png);
		type.set ("assets/images/simple_ship_1.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/simple_ship_2.png", __ASSET__assets_images_simple_ship_2_png);
		type.set ("assets/images/simple_ship_2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/simple_ship_3.png", __ASSET__assets_images_simple_ship_3_png);
		type.set ("assets/images/simple_ship_3.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/smoke.png", __ASSET__assets_images_smoke_png);
		type.set ("assets/images/smoke.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/splash.png", __ASSET__assets_images_splash_png);
		type.set ("assets/images/splash.png", Reflect.field (AssetType, "image".toUpperCase ()));
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
		className.set ("assets/index.html", __ASSET__assets_index_html);
		type.set ("assets/index.html", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/sounds/LudumDare29.cfxr", __ASSET__assets_sounds_ludumdare29_cfxr);
		type.set ("assets/sounds/LudumDare29.cfxr", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/sounds/menu_transition.wav", __ASSET__assets_sounds_menu_transition_wav);
		type.set ("assets/sounds/menu_transition.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/sounds/time_count.wav", __ASSET__assets_sounds_time_count_wav);
		type.set ("assets/sounds/time_count.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/time_count_last.wav", __ASSET__assets_sounds_time_count_last_wav);
		type.set ("assets/sounds/time_count_last.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/time_count_last_2.wav", __ASSET__assets_sounds_time_count_last_2_wav);
		type.set ("assets/sounds/time_count_last_2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/time_finale.wav", __ASSET__assets_sounds_time_finale_wav);
		type.set ("assets/sounds/time_finale.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_1.wav", __ASSET__assets_sounds_wave_1_wav);
		type.set ("assets/sounds/wave_1.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_10.wav", __ASSET__assets_sounds_wave_10_wav);
		type.set ("assets/sounds/wave_10.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_11.wav", __ASSET__assets_sounds_wave_11_wav);
		type.set ("assets/sounds/wave_11.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_12.wav", __ASSET__assets_sounds_wave_12_wav);
		type.set ("assets/sounds/wave_12.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_13.wav", __ASSET__assets_sounds_wave_13_wav);
		type.set ("assets/sounds/wave_13.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_14.wav", __ASSET__assets_sounds_wave_14_wav);
		type.set ("assets/sounds/wave_14.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_15.wav", __ASSET__assets_sounds_wave_15_wav);
		type.set ("assets/sounds/wave_15.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_16.wav", __ASSET__assets_sounds_wave_16_wav);
		type.set ("assets/sounds/wave_16.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_17.wav", __ASSET__assets_sounds_wave_17_wav);
		type.set ("assets/sounds/wave_17.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_18.wav", __ASSET__assets_sounds_wave_18_wav);
		type.set ("assets/sounds/wave_18.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_19.wav", __ASSET__assets_sounds_wave_19_wav);
		type.set ("assets/sounds/wave_19.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_2.wav", __ASSET__assets_sounds_wave_2_wav);
		type.set ("assets/sounds/wave_2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_20.wav", __ASSET__assets_sounds_wave_20_wav);
		type.set ("assets/sounds/wave_20.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_3.wav", __ASSET__assets_sounds_wave_3_wav);
		type.set ("assets/sounds/wave_3.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_4.wav", __ASSET__assets_sounds_wave_4_wav);
		type.set ("assets/sounds/wave_4.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_5.wav", __ASSET__assets_sounds_wave_5_wav);
		type.set ("assets/sounds/wave_5.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_6.wav", __ASSET__assets_sounds_wave_6_wav);
		type.set ("assets/sounds/wave_6.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_7.wav", __ASSET__assets_sounds_wave_7_wav);
		type.set ("assets/sounds/wave_7.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_8.wav", __ASSET__assets_sounds_wave_8_wav);
		type.set ("assets/sounds/wave_8.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wave_9.wav", __ASSET__assets_sounds_wave_9_wav);
		type.set ("assets/sounds/wave_9.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wreck_ship_1.wav", __ASSET__assets_sounds_wreck_ship_1_wav);
		type.set ("assets/sounds/wreck_ship_1.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wreck_ship_2.wav", __ASSET__assets_sounds_wreck_ship_2_wav);
		type.set ("assets/sounds/wreck_ship_2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("assets/sounds/wreck_ship_3.wav", __ASSET__assets_sounds_wreck_ship_3_wav);
		type.set ("assets/sounds/wreck_ship_3.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("timeCountEffect", __ASSET__assets_sounds_time_count_wav1);
		type.set ("timeCountEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("timeCountLastEffect", __ASSET__assets_sounds_time_count_last_3);
		type.set ("timeCountLastEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("timeFinaleEffect", __ASSET__assets_sounds_time_finale_wav1);
		type.set ("timeFinaleEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wreckShip1Effect", __ASSET__assets_sounds_wreck_ship_2);
		type.set ("wreckShip1Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wreckShip2Effect", __ASSET__assets_sounds_wreck_ship_3);
		type.set ("wreckShip2Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wreckShip3Effect", __ASSET__assets_sounds_wreck_ship_4);
		type.set ("wreckShip3Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wave1Effect", __ASSET__assets_sounds_wave_16);
		type.set ("wave1Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wave2Effect", __ASSET__assets_sounds_wave_17);
		type.set ("wave2Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wave3Effect", __ASSET__assets_sounds_wave_18);
		type.set ("wave3Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wave4Effect", __ASSET__assets_sounds_wave_19);
		type.set ("wave4Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wave5Effect", __ASSET__assets_sounds_wave_20);
		type.set ("wave5Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("wave6Effect", __ASSET__assets_sounds_wave_21);
		type.set ("wave6Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("menuTransitionEffect", __ASSET__assets_sounds_menu_transition_wav1);
		type.set ("menuTransitionEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		
		#elseif html5
		
		addExternal("assets/data/data-goes-here.txt", "text", "assets/data/data-goes-here.txt");
		addExternal("assets/images/bubble.png", "image", "assets/images/bubble.png");
		addExternal("assets/images/ExplosionParticle.png", "image", "assets/images/ExplosionParticle.png");
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
		addExternal("assets/images/simple_ship.png", "image", "assets/images/simple_ship.png");
		addExternal("assets/images/simple_ship_1.png", "image", "assets/images/simple_ship_1.png");
		addExternal("assets/images/simple_ship_2.png", "image", "assets/images/simple_ship_2.png");
		addExternal("assets/images/simple_ship_3.png", "image", "assets/images/simple_ship_3.png");
		addExternal("assets/images/smoke.png", "image", "assets/images/smoke.png");
		addExternal("assets/images/splash.png", "image", "assets/images/splash.png");
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
		addExternal("assets/index.html", "text", "assets/index.html");
		addExternal("assets/music/music-goes-here.txt", "text", "assets/music/music-goes-here.txt");
		addExternal("assets/sounds/LudumDare29.cfxr", "text", "assets/sounds/LudumDare29.cfxr");
		addExternal("assets/sounds/menu_transition.wav", "sound", "assets/sounds/menu_transition.wav");
		addExternal("assets/sounds/sounds-go-here.txt", "text", "assets/sounds/sounds-go-here.txt");
		addExternal("assets/sounds/time_count.wav", "sound", "assets/sounds/time_count.wav");
		addExternal("assets/sounds/time_count_last.wav", "sound", "assets/sounds/time_count_last.wav");
		addExternal("assets/sounds/time_count_last_2.wav", "sound", "assets/sounds/time_count_last_2.wav");
		addExternal("assets/sounds/time_finale.wav", "sound", "assets/sounds/time_finale.wav");
		addExternal("assets/sounds/wave_1.wav", "sound", "assets/sounds/wave_1.wav");
		addExternal("assets/sounds/wave_10.wav", "sound", "assets/sounds/wave_10.wav");
		addExternal("assets/sounds/wave_11.wav", "sound", "assets/sounds/wave_11.wav");
		addExternal("assets/sounds/wave_12.wav", "sound", "assets/sounds/wave_12.wav");
		addExternal("assets/sounds/wave_13.wav", "sound", "assets/sounds/wave_13.wav");
		addExternal("assets/sounds/wave_14.wav", "sound", "assets/sounds/wave_14.wav");
		addExternal("assets/sounds/wave_15.wav", "sound", "assets/sounds/wave_15.wav");
		addExternal("assets/sounds/wave_16.wav", "sound", "assets/sounds/wave_16.wav");
		addExternal("assets/sounds/wave_17.wav", "sound", "assets/sounds/wave_17.wav");
		addExternal("assets/sounds/wave_18.wav", "sound", "assets/sounds/wave_18.wav");
		addExternal("assets/sounds/wave_19.wav", "sound", "assets/sounds/wave_19.wav");
		addExternal("assets/sounds/wave_2.wav", "sound", "assets/sounds/wave_2.wav");
		addExternal("assets/sounds/wave_20.wav", "sound", "assets/sounds/wave_20.wav");
		addExternal("assets/sounds/wave_3.wav", "sound", "assets/sounds/wave_3.wav");
		addExternal("assets/sounds/wave_4.wav", "sound", "assets/sounds/wave_4.wav");
		addExternal("assets/sounds/wave_5.wav", "sound", "assets/sounds/wave_5.wav");
		addExternal("assets/sounds/wave_6.wav", "sound", "assets/sounds/wave_6.wav");
		addExternal("assets/sounds/wave_7.wav", "sound", "assets/sounds/wave_7.wav");
		addExternal("assets/sounds/wave_8.wav", "sound", "assets/sounds/wave_8.wav");
		addExternal("assets/sounds/wave_9.wav", "sound", "assets/sounds/wave_9.wav");
		addExternal("assets/sounds/wreck_ship_1.wav", "sound", "assets/sounds/wreck_ship_1.wav");
		addExternal("assets/sounds/wreck_ship_2.wav", "sound", "assets/sounds/wreck_ship_2.wav");
		addExternal("assets/sounds/wreck_ship_3.wav", "sound", "assets/sounds/wreck_ship_3.wav");
		addExternal("timeCountEffect", "sound", "assets/sounds/time_count.wav");
		addExternal("timeCountLastEffect", "sound", "assets/sounds/time_count_last_2.wav");
		addExternal("timeFinaleEffect", "sound", "assets/sounds/time_finale.wav");
		addExternal("wreckShip1Effect", "sound", "assets/sounds/wreck_ship_1.wav");
		addExternal("wreckShip2Effect", "sound", "assets/sounds/wreck_ship_2.wav");
		addExternal("wreckShip3Effect", "sound", "assets/sounds/wreck_ship_3.wav");
		addExternal("wave1Effect", "sound", "assets/sounds/wave_15.wav");
		addExternal("wave2Effect", "sound", "assets/sounds/wave_16.wav");
		addExternal("wave3Effect", "sound", "assets/sounds/wave_17.wav");
		addExternal("wave4Effect", "sound", "assets/sounds/wave_18.wav");
		addExternal("wave5Effect", "sound", "assets/sounds/wave_19.wav");
		addExternal("wave6Effect", "sound", "assets/sounds/wave_20.wav");
		addExternal("menuTransitionEffect", "sound", "assets/sounds/menu_transition.wav");
		
		
		#else
		
		#if (windows || mac || linux)
		
		var loadManifest = false;
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/images/bubble.png", __ASSET__assets_images_bubble_png);
		type.set ("assets/images/bubble.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/ExplosionParticle.png", __ASSET__assets_images_explosionparticle_png);
		type.set ("assets/images/ExplosionParticle.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
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
		
		className.set ("assets/images/simple_ship.png", __ASSET__assets_images_simple_ship_png);
		type.set ("assets/images/simple_ship.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/simple_ship_1.png", __ASSET__assets_images_simple_ship_1_png);
		type.set ("assets/images/simple_ship_1.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/simple_ship_2.png", __ASSET__assets_images_simple_ship_2_png);
		type.set ("assets/images/simple_ship_2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/simple_ship_3.png", __ASSET__assets_images_simple_ship_3_png);
		type.set ("assets/images/simple_ship_3.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/smoke.png", __ASSET__assets_images_smoke_png);
		type.set ("assets/images/smoke.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
		className.set ("assets/images/splash.png", __ASSET__assets_images_splash_png);
		type.set ("assets/images/splash.png", Reflect.field (AssetType, "image".toUpperCase ()));
		
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
		
		className.set ("assets/index.html", __ASSET__assets_index_html);
		type.set ("assets/index.html", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/sounds/LudumDare29.cfxr", __ASSET__assets_sounds_ludumdare29_cfxr);
		type.set ("assets/sounds/LudumDare29.cfxr", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/sounds/menu_transition.wav", __ASSET__assets_sounds_menu_transition_wav);
		type.set ("assets/sounds/menu_transition.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		
		className.set ("assets/sounds/time_count.wav", __ASSET__assets_sounds_time_count_wav);
		type.set ("assets/sounds/time_count.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/time_count_last.wav", __ASSET__assets_sounds_time_count_last_wav);
		type.set ("assets/sounds/time_count_last.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/time_count_last_2.wav", __ASSET__assets_sounds_time_count_last_2_wav);
		type.set ("assets/sounds/time_count_last_2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/time_finale.wav", __ASSET__assets_sounds_time_finale_wav);
		type.set ("assets/sounds/time_finale.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_1.wav", __ASSET__assets_sounds_wave_1_wav);
		type.set ("assets/sounds/wave_1.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_10.wav", __ASSET__assets_sounds_wave_10_wav);
		type.set ("assets/sounds/wave_10.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_11.wav", __ASSET__assets_sounds_wave_11_wav);
		type.set ("assets/sounds/wave_11.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_12.wav", __ASSET__assets_sounds_wave_12_wav);
		type.set ("assets/sounds/wave_12.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_13.wav", __ASSET__assets_sounds_wave_13_wav);
		type.set ("assets/sounds/wave_13.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_14.wav", __ASSET__assets_sounds_wave_14_wav);
		type.set ("assets/sounds/wave_14.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_15.wav", __ASSET__assets_sounds_wave_15_wav);
		type.set ("assets/sounds/wave_15.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_16.wav", __ASSET__assets_sounds_wave_16_wav);
		type.set ("assets/sounds/wave_16.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_17.wav", __ASSET__assets_sounds_wave_17_wav);
		type.set ("assets/sounds/wave_17.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_18.wav", __ASSET__assets_sounds_wave_18_wav);
		type.set ("assets/sounds/wave_18.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_19.wav", __ASSET__assets_sounds_wave_19_wav);
		type.set ("assets/sounds/wave_19.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_2.wav", __ASSET__assets_sounds_wave_2_wav);
		type.set ("assets/sounds/wave_2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_20.wav", __ASSET__assets_sounds_wave_20_wav);
		type.set ("assets/sounds/wave_20.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_3.wav", __ASSET__assets_sounds_wave_3_wav);
		type.set ("assets/sounds/wave_3.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_4.wav", __ASSET__assets_sounds_wave_4_wav);
		type.set ("assets/sounds/wave_4.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_5.wav", __ASSET__assets_sounds_wave_5_wav);
		type.set ("assets/sounds/wave_5.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_6.wav", __ASSET__assets_sounds_wave_6_wav);
		type.set ("assets/sounds/wave_6.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_7.wav", __ASSET__assets_sounds_wave_7_wav);
		type.set ("assets/sounds/wave_7.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_8.wav", __ASSET__assets_sounds_wave_8_wav);
		type.set ("assets/sounds/wave_8.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wave_9.wav", __ASSET__assets_sounds_wave_9_wav);
		type.set ("assets/sounds/wave_9.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wreck_ship_1.wav", __ASSET__assets_sounds_wreck_ship_1_wav);
		type.set ("assets/sounds/wreck_ship_1.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wreck_ship_2.wav", __ASSET__assets_sounds_wreck_ship_2_wav);
		type.set ("assets/sounds/wreck_ship_2.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("assets/sounds/wreck_ship_3.wav", __ASSET__assets_sounds_wreck_ship_3_wav);
		type.set ("assets/sounds/wreck_ship_3.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("timeCountEffect", __ASSET__assets_sounds_time_count_wav1);
		type.set ("timeCountEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("timeCountLastEffect", __ASSET__assets_sounds_time_count_last_3);
		type.set ("timeCountLastEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("timeFinaleEffect", __ASSET__assets_sounds_time_finale_wav1);
		type.set ("timeFinaleEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wreckShip1Effect", __ASSET__assets_sounds_wreck_ship_2);
		type.set ("wreckShip1Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wreckShip2Effect", __ASSET__assets_sounds_wreck_ship_3);
		type.set ("wreckShip2Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wreckShip3Effect", __ASSET__assets_sounds_wreck_ship_4);
		type.set ("wreckShip3Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wave1Effect", __ASSET__assets_sounds_wave_16);
		type.set ("wave1Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wave2Effect", __ASSET__assets_sounds_wave_17);
		type.set ("wave2Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wave3Effect", __ASSET__assets_sounds_wave_18);
		type.set ("wave3Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wave4Effect", __ASSET__assets_sounds_wave_19);
		type.set ("wave4Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wave5Effect", __ASSET__assets_sounds_wave_20);
		type.set ("wave5Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("wave6Effect", __ASSET__assets_sounds_wave_21);
		type.set ("wave6Effect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		className.set ("menuTransitionEffect", __ASSET__assets_sounds_menu_transition_wav1);
		type.set ("menuTransitionEffect", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		
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
@:keep class __ASSET__assets_images_explosionparticle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
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
@:keep class __ASSET__assets_images_simple_ship_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_simple_ship_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_simple_ship_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_simple_ship_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_smoke_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep class __ASSET__assets_images_splash_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
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
@:keep class __ASSET__assets_index_html extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_sounds_ludumdare29_cfxr extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_sounds_menu_transition_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep class __ASSET__assets_sounds_time_count_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_time_count_last_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_time_count_last_2_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_time_finale_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_1_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_10_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_11_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_12_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_13_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_14_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_15_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_16_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_17_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_18_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_19_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_2_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_20_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_3_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_4_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_5_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_6_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_7_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_8_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_9_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wreck_ship_1_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wreck_ship_2_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wreck_ship_3_wav extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_time_count_wav1 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_time_count_last_3 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_time_finale_wav1 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wreck_ship_2 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wreck_ship_3 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wreck_ship_4 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_16 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_17 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_18 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_19 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_20 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_wave_21 extends flash.media.Sound { }
@:keep class __ASSET__assets_sounds_menu_transition_wav1 extends flash.media.Sound { }


#elseif html5



























































































































#elseif (windows || mac || linux)


@:file("assets/data/data-goes-here.txt") class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray {}
@:bitmap("assets/images/bubble.png") class __ASSET__assets_images_bubble_png extends flash.display.BitmapData {}
@:bitmap("assets/images/ExplosionParticle.png") class __ASSET__assets_images_explosionparticle_png extends flash.display.BitmapData {}
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
@:bitmap("assets/images/simple_ship.png") class __ASSET__assets_images_simple_ship_png extends flash.display.BitmapData {}
@:bitmap("assets/images/simple_ship_1.png") class __ASSET__assets_images_simple_ship_1_png extends flash.display.BitmapData {}
@:bitmap("assets/images/simple_ship_2.png") class __ASSET__assets_images_simple_ship_2_png extends flash.display.BitmapData {}
@:bitmap("assets/images/simple_ship_3.png") class __ASSET__assets_images_simple_ship_3_png extends flash.display.BitmapData {}
@:bitmap("assets/images/smoke.png") class __ASSET__assets_images_smoke_png extends flash.display.BitmapData {}
@:bitmap("assets/images/splash.png") class __ASSET__assets_images_splash_png extends flash.display.BitmapData {}
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
@:file("assets/index.html") class __ASSET__assets_index_html extends flash.utils.ByteArray {}
@:file("assets/music/music-goes-here.txt") class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray {}
@:file("assets/sounds/LudumDare29.cfxr") class __ASSET__assets_sounds_ludumdare29_cfxr extends flash.utils.ByteArray {}
@:sound("assets/sounds/menu_transition.wav") class __ASSET__assets_sounds_menu_transition_wav extends flash.media.Sound {}
@:file("assets/sounds/sounds-go-here.txt") class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray {}
@:sound("assets/sounds/time_count.wav") class __ASSET__assets_sounds_time_count_wav extends flash.media.Sound {}
@:sound("assets/sounds/time_count_last.wav") class __ASSET__assets_sounds_time_count_last_wav extends flash.media.Sound {}
@:sound("assets/sounds/time_count_last_2.wav") class __ASSET__assets_sounds_time_count_last_2_wav extends flash.media.Sound {}
@:sound("assets/sounds/time_finale.wav") class __ASSET__assets_sounds_time_finale_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_1.wav") class __ASSET__assets_sounds_wave_1_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_10.wav") class __ASSET__assets_sounds_wave_10_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_11.wav") class __ASSET__assets_sounds_wave_11_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_12.wav") class __ASSET__assets_sounds_wave_12_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_13.wav") class __ASSET__assets_sounds_wave_13_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_14.wav") class __ASSET__assets_sounds_wave_14_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_15.wav") class __ASSET__assets_sounds_wave_15_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_16.wav") class __ASSET__assets_sounds_wave_16_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_17.wav") class __ASSET__assets_sounds_wave_17_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_18.wav") class __ASSET__assets_sounds_wave_18_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_19.wav") class __ASSET__assets_sounds_wave_19_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_2.wav") class __ASSET__assets_sounds_wave_2_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_20.wav") class __ASSET__assets_sounds_wave_20_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_3.wav") class __ASSET__assets_sounds_wave_3_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_4.wav") class __ASSET__assets_sounds_wave_4_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_5.wav") class __ASSET__assets_sounds_wave_5_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_6.wav") class __ASSET__assets_sounds_wave_6_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_7.wav") class __ASSET__assets_sounds_wave_7_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_8.wav") class __ASSET__assets_sounds_wave_8_wav extends flash.media.Sound {}
@:sound("assets/sounds/wave_9.wav") class __ASSET__assets_sounds_wave_9_wav extends flash.media.Sound {}
@:sound("assets/sounds/wreck_ship_1.wav") class __ASSET__assets_sounds_wreck_ship_1_wav extends flash.media.Sound {}
@:sound("assets/sounds/wreck_ship_2.wav") class __ASSET__assets_sounds_wreck_ship_2_wav extends flash.media.Sound {}
@:sound("assets/sounds/wreck_ship_3.wav") class __ASSET__assets_sounds_wreck_ship_3_wav extends flash.media.Sound {}
@:sound("assets/sounds/time_count.wav") class __ASSET__assets_sounds_time_count_wav1 extends flash.media.Sound {}
@:sound("assets/sounds/time_count_last_2.wav") class __ASSET__assets_sounds_time_count_last_3 extends flash.media.Sound {}
@:sound("assets/sounds/time_finale.wav") class __ASSET__assets_sounds_time_finale_wav1 extends flash.media.Sound {}
@:sound("assets/sounds/wreck_ship_1.wav") class __ASSET__assets_sounds_wreck_ship_2 extends flash.media.Sound {}
@:sound("assets/sounds/wreck_ship_2.wav") class __ASSET__assets_sounds_wreck_ship_3 extends flash.media.Sound {}
@:sound("assets/sounds/wreck_ship_3.wav") class __ASSET__assets_sounds_wreck_ship_4 extends flash.media.Sound {}
@:sound("assets/sounds/wave_15.wav") class __ASSET__assets_sounds_wave_16 extends flash.media.Sound {}
@:sound("assets/sounds/wave_16.wav") class __ASSET__assets_sounds_wave_17 extends flash.media.Sound {}
@:sound("assets/sounds/wave_17.wav") class __ASSET__assets_sounds_wave_18 extends flash.media.Sound {}
@:sound("assets/sounds/wave_18.wav") class __ASSET__assets_sounds_wave_19 extends flash.media.Sound {}
@:sound("assets/sounds/wave_19.wav") class __ASSET__assets_sounds_wave_20 extends flash.media.Sound {}
@:sound("assets/sounds/wave_20.wav") class __ASSET__assets_sounds_wave_21 extends flash.media.Sound {}
@:sound("assets/sounds/menu_transition.wav") class __ASSET__assets_sounds_menu_transition_wav1 extends flash.media.Sound {}


#end
