import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

// cutcat


<dungeontactics:steel_sword>.displayName = "§bTrans§dcen§fded §cP§6r§e§ai§9d§5e§cs§6w§eo§ar§9d";
mods.jei.JEI.addDescription([<dungeontactics:steel_sword>],["A sword imbued with the power of cat girls, pretty colors, pickles, and head pats."]);

<dungeontactics:steel_sword>.addTooltip(format.aqua("+9999 damage to TERFs"));
<dungeontactics:steel_sword>.addTooltip(format.darkBlue("Developer Item 6/6"));

mods.betterwithmods.Anvil.addShaped(<dungeontactics:steel_sword>, 
[
   [null, null, <minecraft:diamond>, <arcanearchives:shaped_quartz>],
   [null, <ore:ingotSilver>, <ore:dyePink>, <minecraft:diamond>],
   [<minecraft:diamond>, <ore:dyePink>, <ore:ingotSilver>, null],
   [<minecraft:diamond>, <minecraft:diamond>, null, null ]
]);