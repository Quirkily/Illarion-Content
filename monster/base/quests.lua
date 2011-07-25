--Generic 'Kill X monsters'-Quests by Estralis Seborian

module("monster.base.quests", package.seeall)

--TEMPLATE TO ADD A QUEST TO function iniQuests()

--local id=NUMBER; --ID of the quest
--germanTitle[id]="GERMAN TITLE"; --Title of the quest in german
--englishTitle[id]="ENGLISH TITLE"; --Title of the quest in english
--NPCName[id]="Miggs"; --This is the name of the NPC who gives out the quest
--statusId[id]=NUMBER; --the queststatus as used by the NPC
--germanRace[id]="stinkige Gullimumien"; --free description of the foes in german
--englishRace[id]="smelly sewer mummies"; --free description of the foes in english
--table.insert(questList[MONSTERID],id); --Insert the quest into the quest list of the monster race that has to be slain. You can add multiple monsters this way.
--minimumQueststatus[id]=NUMBER1; --quest is only active with this queststatus and above. Each monster slain adds +1. Use a value > 0!
--maximumQueststatus[id]=NUMBER2; --quest is finished if this queststatus is reached, no kill are counted anymore. Difference between NUMBER1 and NUMBER2 is the number of monsters that have to be slain
--questLocation[id]=position(X,Y,Z); --a position around which the monsters have to be slain, e.g. centre of a dungeon or forest
--radius[id]=RADIUS; --in this radius around the questlocation, kills are counted valid

--Comment: If you want a NPC to give out multiple quests, you can do it like this:

--Quest 1: To accept quest 1, set queststatus to 1 with the NPC. Use queststatus 1->11 to count 10 monsters. If the quest is finished, set queststatus to 12 with the NPC.
--Quest 2: To accept quest 2, set queststatus to 13 with the NPC. Use queststatus 13->18 to count 5 monsters. If the quest is finished, set queststatus to 19 with the NPC.
--Quest 3: To accept quest 3, set queststatus to 20 with the NPC. Use queststatus 20->21 to count 1 monster. If the quest is finished, set queststatus to 22 with the NPC.

function iniQuests()

    --Initilisation
    
    statusId={};
    germanTitle={};
    englishTitle={};
    NPCName={};
    germanRace={};
    englishRace={};
    questList={};
    minimumQueststatus={};
    maximumQueststatus={};
    questLocation={};
    radius={};

    questList[4]={}; --human necromancer
    questList[23]={}; --halfling thief
    questList[35]={}; --elven hunter
    questList[71]={}; --panthers
    questList[72]={}; --panthers
    questList[73]={}; --panthers
    questList[74]={}; --panthers
    questList[75]={}; --panthers
    questList[81]={}; --wolves
    questList[82]={}; --wolves
    questList[83]={}; --wolves
    questList[84]={}; --wolves
    questList[85]={}; --wolves
    questList[101]={}; --mummies
    questList[102]={}; --mummies
    questList[103]={}; --mummies
    questList[104]={}; --mummies
    questList[105]={}; --mummies
    questList[106]={}; --mummies
    questList[107]={}; --mummies
    questList[111]={}; --skeletons
    questList[112]={}; --skeletons
    questList[113]={}; --skeletons
    questList[114]={}; --skeletons
    questList[115]={}; --skeletons
    questList[151]={}; --spiders
    questList[152]={}; --spiders
    questList[153]={}; --spiders
    questList[154]={}; --spiders
    questList[155]={}; --spiders
    questList[295]={}; --rabbits
    questList[294]={}; --deers
    questList[173]={}; --demon skeleton warrior
    questList[264]={}; --ancient fire dragon
    questList[131]={}; --flies
    questList[132]={}; --flies
    questList[133]={}; --flies
    questList[134]={}; --flies
    questList[135]={}; --flies
    questList[211]={}; --skulls
    questList[212]={}; --skulls
    questList[213]={}; --skulls
    questList[214]={}; --skulls
    questList[215]={}; --skulls
    questList[231]={}; --wraith
    questList[232]={}; --wraith
    questList[233]={}; --wraith
    questList[234]={}; --wraith
    questList[235]={}; --wraith

    --Quest 1: Galmair Sewers I (77)
    
    local id=1;
    germanTitle[id]="Die Kanalisation von Galmair I"; 
    englishTitle[id]="Galmair Sewers I";
    NPCName[id]="Miggs"; 
    statusId[id]=77;
    germanRace[id]="Schmei�fliegen"; 
    englishRace[id]="dirty flies";
    table.insert(questList[131],id); 
    table.insert(questList[132],id); 
    table.insert(questList[133],id); 
    table.insert(questList[134],id); 
    table.insert(questList[135],id); 
    minimumQueststatus[id]=1; 
    maximumQueststatus[id]=11; 
    questLocation[id]=position(383,286,-3); 
    radius[id]=50; 

    --Quest 2: Galmair Sewers II (77)

    local id=2;
    germanTitle[id]="Die Kanalisation von Galmair II"; 
    englishTitle[id]="Galmair Sewers II";
    NPCName[id]="Miggs"; 
    statusId[id]=77;
    germanRace[id]="stinkige Gullimumien"; 
    englishRace[id]="smelly sewer mummies";
    table.insert(questList[101],id); 
    table.insert(questList[102],id); 
    table.insert(questList[103],id); 
    table.insert(questList[104],id); 
    table.insert(questList[105],id); 
    table.insert(questList[106],id);    
    table.insert(questList[107],id); 
    minimumQueststatus[id]=13; 
    maximumQueststatus[id]=18; 
    questLocation[id]=position(383,286,-3); 
    radius[id]=50; 

    --Quest 3: Galmair Sewers III (77)

    local id=3;
    germanTitle[id]="Die Kanalisation von Galmair III"; 
    englishTitle[id]="Galmair Sewers III";
    NPCName[id]="Miggs"; 
    statusId[id]=77;
    germanRace[id]="Halblingdiebe"; 
    englishRace[id]="halfling thieves";
    table.insert(questList[23],id); 
    minimumQueststatus[id]=20; 
    maximumQueststatus[id]=21; 
    questLocation[id]=position(383,286,-3); 
    radius[id]=50; 

    --Quest 4: Sir Reginald's Tomb I (78)

    local id=4;
    germanTitle[id]="Sir Reginalds Gruft I"; 
    englishTitle[id]="Sir Reginald's Tomb I";
    NPCName[id]="Grakamesh"; 
    statusId[id]=78;
    germanRace[id]="Mumien"; 
    englishRace[id]="mummies";
    table.insert(questList[101],id); 
    table.insert(questList[102],id); 
    table.insert(questList[103],id); 
    table.insert(questList[104],id); 
    table.insert(questList[105],id); 
    table.insert(questList[106],id);    
    table.insert(questList[107],id); 
    minimumQueststatus[id]=1; 
    maximumQueststatus[id]=11;
    questLocation[id]=position(135,655,-4); 
    radius[id]=50; 

    --Quest 5: Sir Reginald's Tomb II (78)

    local id=5;
    germanTitle[id]="Sir Reginalds Gruft II"; 
    englishTitle[id]="Sir Reginald's Tomb II";
    NPCName[id]="Grakamesh"; 
    statusId[id]=78;
    germanRace[id]="Sch�del"; 
    englishRace[id]="skulls";
    table.insert(questList[211],id); 
    table.insert(questList[212],id); 
    table.insert(questList[213],id); 
    table.insert(questList[214],id); 
    table.insert(questList[215],id); 
    minimumQueststatus[id]=13; 
    maximumQueststatus[id]=18;
    questLocation[id]=position(135,655,-4); 
    radius[id]=50; 

    --Quest 6: Sir Reginald's Tomb III (78)

    local id=6;
    germanTitle[id]="Sir Reginalds Gruft III"; 
    englishTitle[id]="Sir Reginald's Tomb III";
    NPCName[id]="Grakamesh"; 
    statusId[id]=78;
    germanRace[id]="Geister"; 
    englishRace[id]="ghosts";
    table.insert(questList[231],id); 
    table.insert(questList[232],id); 
    table.insert(questList[233],id); 
    table.insert(questList[234],id); 
    table.insert(questList[235],id); 
    minimumQueststatus[id]=20; 
    maximumQueststatus[id]=21;
    questLocation[id]=position(135,655,-4); 
    radius[id]=50; 

    --Quest 7: A cave in the Woods I (79)

    local id=7;
    germanTitle[id]="Eine H�hle im Wald I"; 
    englishTitle[id]="A cave in the Woods I";
    NPCName[id]="Myrthe Mildthorn"; 
    statusId[id]=79;
    germanRace[id]="W�lfe"; 
    englishRace[id]="wolves";
    table.insert(questList[81],id); 
    table.insert(questList[82],id); 
    table.insert(questList[83],id); 
    table.insert(questList[84],id); 
    table.insert(questList[85],id); 
    minimumQueststatus[id]=1; 
    maximumQueststatus[id]=11; 
    questLocation[id]=position(774,711,0); 
    radius[id]=40; 

    --Quest 8: A cave in the Woods II (79)

    local id=8;
    germanTitle[id]="Eine H�hle im Wald II"; 
    englishTitle[id]="A cave in the Woods II";
    NPCName[id]="Myrthe Mildthorn"; 
    statusId[id]=79;
    germanRace[id]="Panther"; 
    englishRace[id]="panthers";
    table.insert(questList[71],id); 
    table.insert(questList[72],id); 
    table.insert(questList[73],id); 
    table.insert(questList[74],id); 
    table.insert(questList[75],id); 
    minimumQueststatus[id]=13; 
    maximumQueststatus[id]=18; 
    questLocation[id]=position(774,711,0); 
    radius[id]=40; 

    --Quest 9: A cave in the Woods III (79)

    local id=9;
    germanTitle[id]="Eine H�hle im Wald III"; 
    englishTitle[id]="A cave in the Woods III";
    NPCName[id]="Myrthe Mildthorn"; 
    statusId[id]=79;
    germanRace[id]="Spinnen"; 
    englishRace[id]="spiders";
    table.insert(questList[151],id); 
    table.insert(questList[152],id); 
    table.insert(questList[153],id); 
    table.insert(questList[154],id); 
    table.insert(questList[155],id); 
    minimumQueststatus[id]=20; 
    maximumQueststatus[id]=21; 
    questLocation[id]=position(774,711,0); 
    radius[id]=40;

    --Quest 10: The Poacher I (4)

    local id=10;
    germanTitle[id]="Der Wilderer I"; 
    englishTitle[id]="The Poacher I";
    NPCName[id]="Eugene Burton"; 
    statusId[id]=4;
    germanRace[id]="Hasen"; 
    englishRace[id]="rabbits";
    table.insert(questList[295],id); 
    minimumQueststatus[id]=1; 
    maximumQueststatus[id]=7; 
    questLocation[id]=position(775,475,0); 
    radius[id]=75; 

    --Quest 11: The Poacher II (4)

    local id=11;
    germanTitle[id]="Der Wilderer II"; 
    englishTitle[id]="The Poacher II";
    NPCName[id]="Eugene Burton"; 
    statusId[id]=4;
    germanRace[id]="Dammhirsche"; 
    englishRace[id]="fallow deer";
    table.insert(questList[294],id); 
    minimumQueststatus[id]=9; 
    maximumQueststatus[id]=21; 
    questLocation[id]=position(775,475,0); 
    radius[id]=75; 

    --Quest 12: The Poacher III (4)

    local id=12;
    germanTitle[id]="Der Wilderer III"; 
    englishTitle[id]="The Poacher III";
    NPCName[id]="Eugene Burton"; 
    statusId[id]=4;
    germanRace[id]="W�lfe"; 
    englishRace[id]="wolves";
    table.insert(questList[81],id); 
    table.insert(questList[82],id); 
    table.insert(questList[83],id); 
    table.insert(questList[84],id); 
    table.insert(questList[85],id); 
    minimumQueststatus[id]=23; 
    maximumQueststatus[id]=29; 
    questLocation[id]=position(775,475,0); 
    radius[id]=75; 

    --Quest 13: The Poacher IV (4)

    local id=13;
    germanTitle[id]="Der Wilderer IV"; 
    englishTitle[id]="The Poacher IV";
    NPCName[id]="Eugene Burton"; 
    statusId[id]=4;
    germanRace[id]="elfische Wildh�ter"; 
    englishRace[id]="elven rangers";
    table.insert(questList[35],id); 
    minimumQueststatus[id]=30; 
    maximumQueststatus[id]=31; 
    questLocation[id]=position(775,475,0); 
    radius[id]=75; 

    --Quest 14: The Craven Orc II (3)

    local id=14;
    germanTitle[id]="Der feige Ork II"; 
    englishTitle[id]="The Craven Orc II";
    NPCName[id]="Graznok"; 
    statusId[id]=3;
    germanRace[id]="'Lumpenmanns'"; 
    englishRace[id]="'ragmen'";
    table.insert(questList[101],id); 
    table.insert(questList[102],id); 
    table.insert(questList[103],id); 
    table.insert(questList[104],id); 
    table.insert(questList[105],id); 
    table.insert(questList[106],id);    
    table.insert(questList[107],id); 
    minimumQueststatus[id]=3; 
    maximumQueststatus[id]=8; 
    questLocation[id]=position(665,415,0); 
    radius[id]=35; 

    --Quest 15: The Craven Orc III (3)

    local id=15;
    germanTitle[id]="Der feige Ork III"; 
    englishTitle[id]="The Craven Orc III";
    NPCName[id]="Graznok"; 
    statusId[id]=3;
    germanRace[id]="'Knochenmanns'"; 
    englishRace[id]="'bonemen'";
    table.insert(questList[111],id); 
    table.insert(questList[112],id); 
    table.insert(questList[113],id); 
    table.insert(questList[114],id); 
    table.insert(questList[115],id); 
    minimumQueststatus[id]=10; 
    maximumQueststatus[id]=20; 
    questLocation[id]=position(665,415,0); 
    radius[id]=35; 

    --Quest 16: The Errant Crusade II

    local id=16;
    germanTitle[id]="The Errant Crusade II"; 
    englishTitle[id]="Der fehlgeleitete Kreuzzug II";
    NPCName[id]="Arenius Batavius"; 
    statusId[id]=104;
    englishRace[id]="mummies"; 
    germanRace[id]="Mumien";
    table.insert(questList[101],id); 
    table.insert(questList[102],id); 
    table.insert(questList[103],id); 
    table.insert(questList[104],id); 
    table.insert(questList[105],id); 
    table.insert(questList[106],id);    
    table.insert(questList[107],id);
    minimumQueststatus[id]=3; 
    maximumQueststatus[id]=9; 
    questLocation[id]=position(665,415,-3); 
    radius[id]=100; 

    --Quest 17: The Errant Crusade III

    local id=17;
    germanTitle[id]="The Errant Crusade III"; 
    englishTitle[id]="Der fehlgeleitete Kreuzzug III";
    NPCName[id]="Arenius Batavius"; 
    statusId[id]=104;
    englishRace[id]="skeletons"; 
    germanRace[id]="Skelette";
    table.insert(questList[111],id); 
    table.insert(questList[112],id); 
    table.insert(questList[113],id); 
    table.insert(questList[114],id); 
    table.insert(questList[115],id); 
    minimumQueststatus[id]=11; 
    maximumQueststatus[id]=23; 
    questLocation[id]=position(665,415,-3); 
    radius[id]=100;

    --Quest 18: The Errant Crusade IV

    local id=18;
    germanTitle[id]="The Errant Crusade IV"; 
    englishTitle[id]="Der fehlgeleitete Kreuzzug IV";
    NPCName[id]="Arenius Batavius"; 
    statusId[id]=104;
    englishRace[id]="blood mages"; 
    germanRace[id]="Blutmagier";
    table.insert(questList[4],id); 
    minimumQueststatus[id]=26; 
    maximumQueststatus[id]=28; 
    questLocation[id]=position(665,415,-3); 
    radius[id]=100;

    --Quest 19: The Errant Crusade V

    local id=19;
    germanTitle[id]="The Errant Crusade V"; 
    englishTitle[id]="Der fehlgeleitete Kreuzzug V";
    NPCName[id]="Arenius Batavius"; 
    statusId[id]=104;
    englishRace[id]="demon skeleton warrior"; 
    germanRace[id]="D�monenskelettkrieger";
    table.insert(questList[173],id); 
    minimumQueststatus[id]=30; 
    maximumQueststatus[id]=31; 
    questLocation[id]=position(665,415,-3); 
    radius[id]=100;

    --Quest 20: The Errant Crusade VI

    local id=20;
    germanTitle[id]="The Errant Crusade VI"; 
    englishTitle[id]="Der fehlgeleitete Kreuzzug VI";
    NPCName[id]="Arenius Batavius"; 
    statusId[id]=104;
    englishRace[id]="ancient fire dragons"; 
    germanRace[id]="uralter Feuerdrachen";
    table.insert(questList[264],id); 
    minimumQueststatus[id]=33; 
    maximumQueststatus[id]=34; 
    questLocation[id]=position(665,415,-3); 
    radius[id]=100;
	
	--Quest 21: The Ghost Oak IV

    local id=21;
    germanTitle[id]="The Ghost Oak IV"; 
    englishTitle[id]="Die Geistereiche IV";
    NPCName[id]="Madoquar"; 
    statusId[id]=112;
    germanRace[id]="Geist der Eiche"; 
    englishRace[id]="Oak Ghost";
    table.insert(questList[231],id); 
    minimumQueststatus[id]=9; 
    maximumQueststatus[id]=10; 
    questLocation[id]=position(501,107,0); 
    radius[id]=15;

end


function checkQuest(User,Monster)

    local MonID = Monster:getMonsterType();
    local qList = questList[MonID]; 
    local queststatus = 0;

    if qList then

        for _,quest in pairs(qList) do

            queststatus = User:getQuestProgress(statusId[quest]);
 
            if (queststatus >= minimumQueststatus[quest]) and (queststatus < maximumQueststatus[quest]) and (User:isInRangeToPosition(questLocation[quest],radius[quest])) and (User:isInRange(Monster,12)) then --valid kill

                User:setQuestProgress(statusId[quest],queststatus+1);
                
                if ((queststatus+1) == (maximumQueststatus[quest])) then --quest finished

                    base.common.TempInformNLS(User,"[Queststatus] "..germanTitle[quest]..": Du hast "..(queststatus+1-minimumQueststatus[quest]).." von "..(maximumQueststatus[quest]-minimumQueststatus[quest]).." "..germanRace[quest].." besiegt. Kehre zu "..NPCName[quest].." zur�ck, um deine Belohnung zu erhalten." ,"[Quest status] "..englishTitle[quest]..": You have slain "..(queststatus+1-minimumQueststatus[quest]).." of "..(maximumQueststatus[quest]-minimumQueststatus[quest]).." "..englishRace[quest]..". Return to "..NPCName[quest].." to claim your reward."); 

                else --quest not finished

                    base.common.TempInformNLS(User,"[Queststatus] "..germanTitle[quest]..": Du hast "..(queststatus+1-minimumQueststatus[quest]).." von "..(maximumQueststatus[quest]-minimumQueststatus[quest]).." "..germanRace[quest].." besiegt." ,"[Quest status] "..englishTitle[quest]..": You have slain "..(queststatus+1-minimumQueststatus[quest]).." of "..(maximumQueststatus[quest]-minimumQueststatus[quest]).." "..englishRace[quest].."."); 

                end

            else --debugging

                --base.common.TempInformNLS(User,"[Queststatus] Debugging: Bedingungen f�r Kill nicht erf�llt.","[Quest status] Debugging: Conditions for kill not fulfilled."); 

            end
        end
    end
end



