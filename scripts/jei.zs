import mods.jei.category.JeiCategory;
import mods.jei.category.CatalystRequiringRecipe;
import crafttweaker.api.util.text.MCTextComponent;
import mods.jei.component.JeiDrawable;
import mods.jei.component.JeiIngredient;
import mods.jei.recipe.JeiRecipeGraphics;

var category = JeiCategory.create<CatalystRequiringRecipe>("coalmeal", MCTextComponent.createStringTextComponent("Coalmealing"), JeiDrawable.of(<item:contenttweaker:coalmeal1>), [<item:contenttweaker:coalmeal1>, <item:contenttweaker:coalmeal2>, <item:contenttweaker:coalmeal3>, <item:contenttweaker:coalmeal4>, <item:exnihilosequentia:ancient_spores>, <item:mekanism:sawdust>, <item:contenttweaker:infernal_sawdust>, <item:contenttweaker:voidic_sawdust>]) as CatalystRequiringRecipe;
category.inputs = 1;
category.outputs = 1;

//category.addRecipe([[<item:contenttweaker:coalmeal1> as JeiIngredient]], [[]], );