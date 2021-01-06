import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.arcanearchives.GCT;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemTransformer;

recipes.removeByRecipeName("arcanearchives:diorite");

// Radiant Resonator
// Replace mythril and water buckets with Molten Mythril buckets once that is implemented in the Beneath
recipes.remove(<arcanearchives:radiant_resonator>);
//val arcaneWood = <ore:arcaneWood>; // Note: arcanewood oredict list is in dungeontactics.zs
for item1 in <ore:listAllwater>.items{
   for item2 in <ore:arcaneWood>.items{
      mods.betterwithmods.Anvil.addShaped(<arcanearchives:radiant_resonator>, 
   [
      [<ore:ingotElectrum>, <ore:ingotElectrum>, item2, item2],
      [<minecraft:iron_bars>, item1, <ore:ingotMythril>, null],
      [<minecraft:iron_bars>, item1, <ore:ingotMythril>, null],
      [<ore:ingotElectrum>, <ore:ingotElectrum>, item2, item2]
   ]);   
}}

//Gemcutter's Table
val magicgoldPaneOredict = <ore:otherworldlyGoldPane>;	
magicgoldPaneOredict.addItems([<betternether:quartz_glass_framed_pane>,<aether_legacy:quicksoil_glass_pane>]);	

recipes.remove(<arcanearchives:gemcutters_table>);
for item1 in magicgoldPaneOredict.items{
   for item2 in <ore:arcaneWood>.items{
   mods.betterwithmods.Anvil.addShaped(<arcanearchives:gemcutters_table>, 
   [
      [<aether_legacy:holystone>, <ore:ingotElectrum>, <ore:ingotElectrum>, item2],
      [item1, item2, <betternether:chest_of_drawers>, item2],
      [item1, item2, <betternether:chest_of_drawers>, item2],
      [<wards:enchanted_paper>, <ore:ingotElectrum>, <ore:ingotElectrum>, item2]
   ]);
}}

recipes.remove(<arcanearchives:scepter_revelation>);
mods.betterwithmods.Anvil.addShaped(<arcanearchives:scepter_revelation>, 
[
   [null, null, null, <contenttweaker:material_part:16>],
   [null, null, <ore:stickWood>, null],
   [<ore:ingotElectrum>, <arcanearchives:raw_quartz>, null, null],
   [<ore:ingotElectrum>, <ore:ingotElectrum>, null, null]
]);   

recipes.remove(<arcanearchives:lectern_manifest>);
recipes.addShaped("Lectern Manifest", <arcanearchives:lectern_manifest>,[
	[<ore:ingotElectrum>, <arcanearchives:manifest>, <ore:ingotElectrum>],
	[<ore:stickWood>, <ore:arcaneWood>, <ore:stickWood>],
	[<ore:stickWood>, <ore:ingotElectrum>, <ore:stickWood>]
]);

recipes.remove(<arcanearchives:tome_arcana>);
recipes.addShapeless("tome_arcana", <arcanearchives:tome_arcana>.withTag({Book: "arcanearchives:xml/tome.xml"}), [<minecraft:book>, <contenttweaker:material_part:16>]);


//dumbass magic wood brewing recipe until transmutation rune is done
brewing.addBrew(<ore:logWood>, <contenttweaker:magic_blend>, <biomesoplenty:log_1:5>);


//////////Gemcutter Table Recipes
//examples
//// Removes the recipe for radiant dust :  GCT.removeRecipe(<arcanearchives:radiant_dust>*2);
//// Adds a new recipe for radiant dust : GCT.addRecipe("radiant_dust", <arcanearchives:radiant_dust>*2, [<minecraft:flint>, <arcanearchives:raw_quartz>]);
//// Replaces the shaped radiant quartz recipe without disordering the GCT screen: GCT.replaceRecipe("shaped_quartz", <arcanearchives:shaped_quartz>, [<arcanearchives:raw_quartz>*10]);

// radiant amphora
GCT.replaceRecipe("radiant_amphora", <arcanearchives:radiant_amphora>, [<arcanearchives:radiant_dust>*4, <betterwithmods:urn:9>, <contenttweaker:material_part:16>*4]);

GCT.replaceRecipe("scintillating_inlay", <arcanearchives:scintillating_inlay>, [<arcanearchives:radiant_dust>*6, <minecraft:redstone>*12, <ore:ingotElectrum>, <contenttweaker:material_part:16>*6]);

GCT.replaceRecipe("material_interface", <arcanearchives:material_interface>, [<arcanearchives:scintillating_inlay>, <ore:ingotElectrum>, <arcanearchives:shaped_quartz>]);

val brfuelOredict = <ore:brazierFuel>;
brfuelOredict.add(<minecraft:coal>);
brfuelOredict.add(<minecraft:coal:1>);
brfuelOredict.add(<betterwithmods:material:1>);

GCT.replaceRecipe("brazier_of_hoarding", <arcanearchives:brazier_of_hoarding>, [<arcanearchives:radiant_dust>*6, <ore:ingotElectrum>*4, <ore:brazierFuel>*8, <ore:arcaneWood>*3, <endreborn:item_advanced_ender_pearl>]);

GCT.replaceRecipe("containment_field", <arcanearchives:containment_field>, [<arcanearchives:scintillating_inlay>, <ore:ingotElectrum>*2, <arcanearchives:shaped_quartz>*2]);

GCT.replaceRecipe("matrix_brace", <arcanearchives:matrix_brace>, [<arcanearchives:scintillating_inlay>, <ore:ingotElectrum>*2]);

GCT.replaceRecipe("devouring_charm", <arcanearchives:devouring_charm>*4, [<ore:ingotGold>*8, <bountifulbaubles:amuletsingluttony>, <mod_lavacow:sharptooth>*4]);

GCT.replaceRecipe("radiant_key", <arcanearchives:radiant_key>*4, [<ore:ingotElectrum>, <contenttweaker:material_part:16>*3, <arcanearchives:shaped_quartz>]);

GCT.replaceRecipe("radiant_lantern", <arcanearchives:radiant_lantern>*4, [<arcanearchives:raw_quartz>*2, <contenttweaker:material_part:16>*2]);

GCT.replaceRecipe("radiant_tank", <arcanearchives:radiant_tank>, [<arcanearchives:shaped_quartz>*2, <arcanearchives:containment_field>, <ore:ingotElectrum>, <endreborn:item_end_essence>*2]);

GCT.replaceRecipe("monitoring_crystal", <arcanearchives:monitoring_crystal>, [<arcanearchives:shaped_quartz>, <contenttweaker:material_part:16>*2, <ore:stickWood>*4]);

GCT.replaceRecipe("radiant_trove", <arcanearchives:radiant_trove>*12, [<arcanearchives:shaped_quartz>*4, <arcanearchives:material_interface>, <arcanearchives:radiant_chest>, <endreborn:item_end_essence>*4]);

//Cut gems
GCT.addRecipe("pristine_diamond", <contenttweaker:pristine_diamond>, [<minecraft:diamond>, <minecraft:gold_nugget>*6, <minecraft:redstone>*12]);

GCT.addRecipe("poisonetched_emerald", <contenttweaker:poisonetched_emerald>, [<minecraft:emerald>, <betterwithmods:material:54>*6, <betterwithmods:material:37>*12]);

GCT.addRecipe("waterlogged_sapphire", <contenttweaker:waterlogged_sapphire>, [<biomesoplenty:gem:6>, <nyx:lunar_water_bottle>, <betterwithaddons:wheatmat>*12]);

GCT.addRecipe("lucky_peridot", <contenttweaker:lucky_peridot>, [<biomesoplenty:gem:2>, <contenttweaker:4leaf_clover>, <minecraft:dye:4>*12]);

GCT.addRecipe("fortified_ruby", <contenttweaker:fortified_ruby>, [<biomesoplenty:gem:1>, <endreborn:item_shard_obsidian>*6, <endreborn:catalyst>*12]);

GCT.addRecipe("fireetched_onyx", <contenttweaker:fireetched_onyx>, [<simpleores:onyx_gem>, <minecraft:magma_cream>*6, <minecraft:blaze_powder>*8, <betterwithmods:material:16>*12]);

GCT.addRecipe("soulinfused_onyx", <contenttweaker:soulinfused_onyx>, [<simpleores:onyx_gem>, <quark:soul_bead>*6, <quark:soul_powder>*8, <betterwithmods:material:38>*12]);

GCT.addRecipe("holy_zanite", <contenttweaker:holy_zanite>, [<aether_legacy:zanite_gemstone>, <aether_legacy:golden_amber>*6, <aether_legacy:healing_stone>*8, <randomthings:ingredient:5>*12]);

GCT.addRecipe("electrified_zanite", <contenttweaker:electrified_zanite>, [<aether_legacy:zanite_gemstone>, <aether_legacy:ambrosium_shard>*6, <contenttweaker:material_part:16>*8, <minecraft:glowstone_dust>*12]);

GCT.addRecipe("voidseen_amethyst", <contenttweaker:voidseen_amethyst>, [<biomesoplenty:gem:0>, <minecraft:ender_eye>*6, <minecraft:dragon_breath>, <endreborn:item_end_essence>*12]);

GCT.addRecipe("draconium", <contenttweaker:draconium>, [<twilightforest:carminite>*8, <iceandfire:fire_dragon_blood>*4, <twilightforest:fiery_blood>*4, <twilightforest:borer_essence>*12]);

GCT.addRecipe("magicinfused_wood1", <biomesoplenty:log_1:5>*16, [<arcanearchives:radiant_dust>, <contenttweaker:magic_blend>, <ore:mundaneWood>*16]);

GCT.addRecipe("magicinfused_wood2", <biomesoplenty:log_1:5>*64, [<arcanearchives:radiant_dust>*2, <contenttweaker:magic_blend>*2, <ore:mundaneWood>*64]);

// Misc

//ender spectacles
//actually turns out, this thing is OP as shit. endermen and variants don't even retaliate when attacked. I don't like that. until we can fix that or make a workaround, away it goes.
recipes.remove(<betterwithmods:ender_spectacles>);
//GCT.addRecipe("ender_spectacles", <betterwithmods:ender_spectacles>, [<arcanearchives:matrix_brace>*2, <arcanearchives:monitoring_crystal>*2, <betterwithmods:material:40>*2, <arcanearchives:scintillating_inlay>, <betterwithmods:material:8>*1]);
//<betterwithmods:ender_spectacles>.displayName = "§5Ender Spectacles";
//<betterwithmods:ender_spectacles>.addTooltip(format.darkPurple("Epic Headgear"));
//<betterwithmods:ender_spectacles>.addTooltip("Equip to gain unnatural insight into where monsters can spawn. Highly reduces your chance of being teleported by End creatures.");
