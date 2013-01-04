require("base.common")
require("alchemy.base.alchemy")


module("item.id_3109_open_pell",package.seeall)

-- script currently only used to teach alchemy recipes

ListEffectId = {}
ListTaskText = {}
ListTaskItem = {}

function Init()
    
	ListEffectId["Runewick"] = {}
	ListTaskText["Runewick"] = {}
	ListTaskItem["Runewick"] = {}
	
	ListEffectId["Cadomyr"] = {}
	ListTaskText["Cadomyr"] = {}
	ListTaskItem["Cadomyr"] = {}
	
	ListEffectId["Galmair"] = {}
	ListTaskText["Galmair"] = {}
	ListTaskItem["Galmair"] = {}
	
	--[[
	AddPotion(town,               -- the town in which the potion can be learned e.g. "Runewick"
	          potionEffectId,     -- id of the potion be learned e.g. 46
			  taskText,           -- a list with text the npc says when selecting a potion from the list e.g. {"a stock coantining only high toxic adrazin","einen Sud mit nur hoch toxischem Adrazin"}
			  taskItem)           -- a list with id, quality and datas of the item one has to bring in order to learn the recipe e.g. {331,false,{"AdrazinConcentration","9"}}
	]]                            -- if the quality doesn't matter, set it to false; if no data is needed, just leave it out completely. note that every data gets its own list within the the list
	
	AddPotion("Runewick",
	          10,
			  {"a potion which increases strength to the highest possible grade and no other effect with at least very good quality","ein Trank, der die St�rke im h�chstm�glichen Gerade hebt und keine anderen Effekte hat. Die Qualit�t sollte mindestens sehr gut sein."}
			  {59,7,{"filledWith","potion"},{"potionEffectId","95555555"}
			  )
	AddPotion("Cadomyr", 
	          301, 
			  {"a stock containing only highly toxic Adrazin", "einen Sud, der nur nur hoch toxisches Adrazin enth�lt"},
			  {331,false,{"filledWith","stock"},{"AdrazinConcentration","9"},{"IllidriumConcentration","5"},{"CaprazinConcentration","5"},{"HyperboreliumConcentration","5"},{"EcholonConcentration","5"},{"DracolinConcentration","5"},{"OrcanolConcentration","5"},{"FenolinConcentration","5"}}
			  )
	AddPotion("Galmair", 
	          302, 
			  {"a small explosion bomb with at least average quality", "eine kleine Explosionsbombe von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","301"}}
			  )
	AddPotion("Runewick", 
	          304, 
			  {"a medium explosion bomb with at least average quality", "eine mittlere Explosionsbombe von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","302"}}
			  )
    AddPotion("Galmair", 
	          306, 
			  {"a stock containing only highly toxic Caprazin", "einen Sud, der nur nur hoch toxisches Caprazin enth�lt"},
			  {331,false,{"filledWith","stock"},{"AdrazinConcentration","5"},{"IllidriumConcentration","5"},{"CaprazinConcentration","9"},{"HyperboreliumConcentration","5"},{"EcholonConcentration","5"},{"DracolinConcentration","5"},{"OrcanolConcentration","5"},{"FenolinConcentration","5"}}
			  )			  
	AddPotion("Runewick", 
	          307, 
			  {"a small mana annihilator bomb with at least average quality", "einen kleinen Manaannihilator von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","306"}}
			  )
	AddPotion("Cadomyr", 
	          309, 
			  {"a medium mana annihilator bomb with at least average quality", "einen mittleren Manaannihilator von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","307"}}
			  )
    AddPotion("Runewick", 
	          311, 
			  {"a stock containing only highly toxic Illidrium", "einen Sud, der nur nur hoch toxisches Illidrium enth�lt"},
			  {331,false,{"filledWith","stock"},{"AdrazinConcentration","5"},{"IllidriumConcentration","9"},{"CaprazinConcentration","5"},{"HyperboreliumConcentration","5"},{"EcholonConcentration","5"},{"DracolinConcentration","5"},{"OrcanolConcentration","5"},{"FenolinConcentration","5"}}
			  )
    AddPotion("Cadomyr", 
	          312, 
			  {"a small nutrition annihilator bomb with at least average quality", "einen kleinen Nahrungsannihilator von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","311"}}
			  )		
    AddPotion("Galmair", 
	          314, 
			  {"a medium nutrition annihilator bomb with at least average quality", "einen mittleren Nahrungsannihilator von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","312"}}
			  )
    AddPotion("Galmair", 
	          316, 
			  {"a medium mana annihilator bomb with at least average quality", "einen mittleren Manaannihilator von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","307"}}
			  )
	AddPotion("Cadomyr", 
	          317, 
			  {"a big explosion bomb with at least average quality", "eine eine gro�e Explosionsbombe von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","304"}}
			  )		  
    AddPotion("Runewick",		  
			  400,
			  {"a desert sky capsule","eine W�stenhimmelskapsel"},
			  {146,false}
			  )
	AddPotion("Runewick",		  
			  401,
			  {"a dark moss","ein Dunkelmoos"},
			  {764,false}
			  )
    AddPotion("Galmair",		  
			  402,
			  {"a rain weed","ein Regenkraut"},
			  {761,false}
			  )
    AddPotion("Galmair",		  
			  403,
			  {"a con blossom","eine Trugbl�te"},
			  {766,false}
			  )
	AddPotion("Cadomyr",		  
			  404,
			  {"a life root","eine Lebenswurzel"},
			  {152,false}
			  )
    AddPotion("Cadomyr",		  
			  405,
			  {"a heart blood","ein Herzblut"},
			  {758,false}
			  )
    AddPotion("Cadomyr",		  
			  406,
			  {"a daydream","einen Tragtraum"},
			  {765,false}
			  )
    AddPotion("Cadomyr",		  
			  605,
			  {"a stock containing no Adrazin, dominant pronounced Illidrium, no Caprazin, slightly marked Hyperborelium, saturated solution of Echolon, enriched Dracolin, no Orcanol and enriched Fenolin","einen Sud der kein Adrazin, konzentriertes Illidrium, kein Caprazin, schwache Konzentration Hyperborelium, ges�ttige Anreicherung von Echolon, etwas Dracolin, kein Orcanol und etwas Fenolin enth�lt"},
			  {331,false,{"filledWith","stock"},{"AdrazinConcentration","5"},{"IllidriumConcentration","8"},{"CaprazinConcentration","5"},{"HyperboreliumConcentration","4"},{"EcholonConcentration","1"},{"DracolinConcentration","7"},{"OrcanolConcentration","5"},{"FenolinConcentration","7"}}
			  )
    AddPotion("Cadomyr",		  
			  601,
			  {"a potion for orc language with at least average quality","ein Orksprachtrank von zumindest durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","605"}}
			  )
    AddPotion("Galmair",		  
			  606,
			  {"a stock containing no Adrazin, dominant pronounced Illidrium, no Caprazin, slightly marked Hyperborelium, saturated solution of Echolon, enriched Dracolin, no Orcanol and enriched Fenolin","einen Sud der kein Adrazin, konzentriertes Illidrium, kein Caprazin, schwache Konzentration Hyperborelium, ges�ttige Anreicherung von Echolon, etwas Dracolin, kein Orcanol und etwas Fenolin enth�lt"},
			  {331,false,{"filledWith","stock"},{"AdrazinConcentration","5"},{"IllidriumConcentration","8"},{"CaprazinConcentration","5"},{"HyperboreliumConcentration","4"},{"EcholonConcentration","1"},{"DracolinConcentration","7"},{"OrcanolConcentration","5"},{"FenolinConcentration","7"}}
			  )		
    AddPotion("Galmair",		  
			  602,
			  {"a potion for halfling language with at least average quality","ein Halblingssprachtrank von zumindest durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","606"}}
			  )
    AddPotion("Galmair",		  
			  600,
			  {"a pious berry","eine Frommbeere"},
			  {756,false}
			  )
    AddPotion("Runewick",		  
			  604,
			  {"a stock containing no Adrazin, dominant pronounced Illidrium, no Caprazin, slightly marked Hyperborelium, saturated solution of Echolon, enriched Dracolin, no Orcanol and enriched Fenolin","einen Sud der kein Adrazin, konzentriertes Illidrium, kein Caprazin, schwache Konzentration Hyperborelium, ges�ttige Anreicherung von Echolon, etwas Dracolin, kein Orcanol und etwas Fenolin enth�lt"},
			  {331,false,{"filledWith","stock"},{"AdrazinConcentration","5"},{"IllidriumConcentration","8"},{"CaprazinConcentration","5"},{"HyperboreliumConcentration","4"},{"EcholonConcentration","1"},{"DracolinConcentration","7"},{"OrcanolConcentration","5"},{"FenolinConcentration","7"}}
			  )	
    AddPotion("Runewick",		  
			  603,
			  {"a medium mana annihilator bomb with at least average quality", "einen mittleren Manaannihilator von zumindest durchschnittlicher Qualit�t"},
			  {327,5,{"filledWith","potion"},{"potionEffectId","307"}}
			  )
    AddPotion("Runewick",		  
			  607,
			  {"a potion for the common language with the best quality","einen Trank f�r die Handelssprache in bester Qualit�t"},
			  {330,9,{"filledWith","potion"},{"potionEffectId","600"}}
			  )			  
	AddPotion("Runewick",		  
			  550,
			  {"a potion for the lizard language with at least average quality","ein Trank f�r die Echsensprache mit mindestens durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","604"}}
			  )
    AddPotion("Runewick",		  
			  501,
			  {"a shape shifter potion male human with at least average quality","einen Verwandlungstrank m�nnlicher Mensch mit zumindest durchschnittlicher Qualit�t"},
			  {329,5,{"filledWith","potion"},{"potionEffectId","500"}}
			  )
    AddPotion("Runewick",		  
			  521,
			  {"a potion for the halfling language with at least average quality","einen Trank f�r die Halblingssprache von mindestens durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","606"}}
			  )
    AddPotion("Runewick",		  
			  530,
			  {"a shape shifter female elf with at least average quality","einen Verwandlungstrank weiblicher Elf von mindestens durchschnittlicher Qualit�t"},
			  {329,5,{"filledWith","potion"},{"potionEffectId","531"}}
			  )
	AddPotion("Cadomyr",		  
			  500,
			  {"a potion for the human language with at least average quality","ein Trank f�r die Menschensprache mit mindestens durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","601"}}
			  )
    AddPotion("Cadomyr",		  
			  540,
			  {"a potion for the orc language with at least average quality","ein Trank f�r die Orksprache mit zumindest durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","605"}}
			  )
    AddPotion("Cadomyr",		  
			  511,
			  {"a potion for the dwarf language with at least average quality","einen Trank f�r die Zwergensprache von mindestens durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","602"}}
			  )
    AddPotion("Cadomyr",		  
			  531,
			  {"a potion for the elf language with at least average quality","einen Trank f�r die Elfensprache von mindestens durchschnittlicher Qualit�t"},
			  {330,5,{"filledWith","potion"},{"potionEffectId","603"}}
			  )	  
	AddPotion("Galmair",		  
			  551,
			  {"a shape shifter male lizard with at least average quality","einen Verwandlungstrank m�nnlicher Echsenmensch von mindestens durchschnittlicher Qualit�t"},
			  {329,5,{"filledWith","potion"},{"potionEffectId","550"}}
			  )
    AddPotion("Galmair",		  
			  520,
			  {"a shape shifter female halfling with at least average quality","einen Verwandlungstrank weiblicher Halbling von mindestens durchschnittlicher Qualit�t"},
			  {329,5,{"filledWith","potion"},{"potionEffectId","521"}}
			  )
    AddPotion("Galmair",		  
			  541,
			  {"a shape shifter male orc with at least average quality","einen Verwandlungstrank m�nnlicher Ork von mindestens durchschnittlicher Qualit�t"},
			  {329,5,{"filledWith","potion"},{"potionEffectId","540"}}
			  )
    AddPotion("Galmair",		  
			  510,
			  {"a shape shifter female dwarf with at least average quality","einen Verwandlungstrank weiblicher Zwerg von mindestens durchschnittlicher Qualit�t"},
			  {329,5,{"filledWith","potion"},{"potionEffectId","511"}}
			  )		  
end

function AddPotion(town, potionEffectId, taskText, taskItem)
    table.insert(ListEffectId[town],potionEffectId)
	table.insert(ListTaskText[town],taskText)
	table.insert(ListTaskItem[town],taskItem)
end

function getTown(SourceItem)

    if SourceItem.pos == position(952,767,5) then
	    return "Runewick"
	elseif SourceItem.pos == position(137,542,0) then
	    return "Cadomyr"
	elseif SourceItem.pos == position(376,222,0) then
        return "Galmair"
    end		
	return false
end

function getNPC(SourceItem)

    local myNPC = false
    local npcList = world:getNPCSInRangeOf(SourceItem.pos,5)
	if npcList[1] == nil then
	    return myNPC
	else
        for i=1,#npcList do 
            if (npcList[i].name == "Vallaria Medrota") or (npcList[i].name == "Grator Bottlebreak") or (npcList[i].name == "Joseph Quatrilla") then 
                myNPC = npcList[i] 
                break
			end	
        end
	end
    return myNPC	
end

function RecipeInform( User, SourceItem, TargetItem, Counter, Param, ltstate )

    if (ListEffectId["Runewick"] == nil) then
	    Init()
    end

	-- is the char an alchemist?
	local anAlchemist = alchemy.base.alchemy.CheckIfAlchemist(User,"Auf dem Schriftst�ck steht nur dir unverst�ndliches Alchemistengeschwafel.","For you the document only appears to contain unintelligible alchemical gibberish.")
	if not anAlchemist then
		return
	end
	
	local town = getTown(SourceItem)
	local myListEffectId = ListEffectId[town]
	local myListTaskText = ListTaskText[town]
	local myListTaskItem = ListTaskItem[town]
	
	local language 
	if User:getPlayerLanguage() == Player.english then
	    language = 1
	else
        language = 2
    end		
	myNPC = getNPC(SourceItem)
	if myNPC == false then
	    return
	end

	local originalPos = {}
	local callback = function(dialog)
		local success = dialog:getSuccess()
		if success then
			selected = dialog:getSelectedIndex()
			local orgPos = originalPos[selected+1]
            local effectId = myListEffectId[orgPos]
			if User:getQuestProgress(effectId+1000) == 0 then
				myNPC:talkLanguage(Character.say,Player.english,"If you want me to show you how to create this potion properly, bring me "..myListTaskText[orgPos][language]..". Just put it here ony my table so that I can analyse it.")
				myNPC:talkLanguage(Character.say,Player.german,"Wenn Ihr wollt, dass ich Euch zeige, wie dieser Trank richtig hergestellt wird, bringt mir "..myListTaskText[orgPos][language]..". Einfach hier auf meinen Tisch tun, damit ich meine Analyse vollziehen kann.")
		    else
			    triggerfield.potionToTeacher.TellRecipe(User, effectId)
			end	
		end
	end
	local dialog
	if language == 1 then
	    dialog = SelectionDialog("Potion Recipes", "Which recipe are you interested in?", callback)
	else
	    dialog = SelectionDialog("Trankrezepte", "An welchem Rezept bist du interessiert?", callback)
	end	
	local alreadyLearned = {}
	for i=1,#myListEffectId do
		if User:getQuestProgress(myListEffectId[i]+1000) == 0 then
			dialog:addOption(164, alchemy.base.alchemy.potionName[myListEffectId[i]][language])
		else
		    local bottle = alchemy.base.alchemy.getBottleFromEffect(myListEffectId[i])
		    dialog:addOption(bottle, alchemy.base.alchemy.potionName[myListEffectId[i]][language])
		end	
		table.insert(originalPos,i)
	end
	User:requestSelectionDialog(dialog)
end

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )
      
    if (SourceItem:getType()~=3) then -- no map item
	    return
	end	

    local town = getTown(SourceItem)
	if town == false then
	    return
	else
	    RecipeInform( User, SourceItem, TargetItem, Counter, Param, ltstate )
	end	
	
end