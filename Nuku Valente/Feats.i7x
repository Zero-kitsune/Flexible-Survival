Version 1 of Feats by Nuku Valente begins here.

"Controls feats for Flexible Survival"

Section 1 - Basic Feats

basic feats is a featset.
A featset can be functional. A featset is usually not functional.
basic feats is functional.
fun feats is a featset.

The player has a number called featgained.

Featgetting is an action applying to nothing.
understand "volunteer" as featgetting.

Check featgetting:
	if hp of doctor matt is 0, say "Volunteer for what now? You are a strange person. Considering what game this is, that says a lot!" instead;
	if featgained of player is greater than ( level of player divided by 3 ), say "You do not yet qualify for more feats." instead; 
	if doctor matt is not visible, say "Only Doctor Matt knows how to do this." instead;

carry out featgetting:
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		change the current menu to table of Gainable Feats;
		carry out the displaying activity;
	
To Featget:
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		change the current menu to table of Gainable Feats;
		carry out the displaying activity;

To FunFeatget:
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
		change the current menu to table of Gainable Feats;
		carry out the displaying activity;
	decrease featgained of player by 1;
 
 Addfeating is an action applying to one thing.

carry out addfeating:
	say "Tuna";

To addfeat (x - text) with (y - text):
	if x is not listed in feats of player:
		choose a blank row in table of Gainable Feats;
		now title entry is X;
		now toggle entry is gainfeat rule;
		now description entry is Y;

	
instead of addfeating the fun feats:
	if "Female Preferred" is not listed in feats of player:
		addfeat "Male Preferred" with "You will reject female mutation";
	if "Male Preferred" is not listed in feats of player:
		addfeat "Female Preferred" with "You will reject male mutation";
	addfeat "One Way" with "You can only grow larger, not smaller, sexually, barring specific effects.";
	addfeat "Just One" with "You will only grow one cock, and only one cunt, never more. Possibly less.";
	addfeat "One Pair" with "You will not grow more than two breasts.";
	addfeat "Like Attracts Like" with "You will attract more monsters similar to yourself.";
	if "Cold Fish" is not listed in feats of player:
		addfeat "Horny Bastard" with "You just can't get enough. Every few hours your libido raises all on its own.";
	if "Horny Bastard" is not listed in feats of player:
		addfeat "Cold Fish" with "Your libido will decrease over time.";
	addfeat "Control Freak" with "When you win a battle, you may choose if you wish to engage in the post battle activities or not.";
	addfeat "They Have Your Eyes" with "Any child you have will appear exactly as you at time of birth.";
	addfeat "Litter Bearer" with "Greatly increases the chance of multiple children in one birth - twins or more at over 50% chance.";
	if "Fertile" is listed in feats of player:
		addfeat "Selective Mother" with "You can decide if you want to become pregnant.";
	addfeat "Curious" with "You enjoy poking around everywhere, increasing your chance of finding stuff while exploring or hunting... including trouble.";
	addfeat "Kinky" with "Submitting to crazy beasts is right up your alley, and you gain morale when you do so. Being beat up still lowers it.";
	addfeat "Submissive" with "Gain extra XP for submitting to monsters.";
	if "Pure" is not listed in feats of player, addfeat "Corrupt" with "You have a stronger grip on your humanity.";
	if "Corrupt" is not listed in feats of player, addfeat "Pure" with "You have a weaker grip on your humanity.";
	addfeat "Junk Food Junky" with "Junk food is better for you than regular food and water.";
	addfeat "City Map" with "You have better recall of the city layout and remember where most major landmarks are.";

instead of addfeating the basic feats:
	addfeat "Survivalist" with "You are great at scavenging. When doing such, you get a +4 to finding things.";
	addfeat "Roughing It" with "You can take a quick nap w/o a cot anywhere... just sleep with one eye open.";
	if "Sterile" is not listed in feats of player, addfeat "Fertile" with "You are especially good at producing children. Increase to chance of multiple.";
	if "Fertile" is not listed in feats of player, addfeat "Sterile" with "You are incapable of mothering a child.";
	if "Fertile" is listed in feats of player:
		addfeat "Maternal" with "You love children.  Faster gestation and improves morale from childbirth.";
	if number of entries in childrenfaces is greater than 0:
		addfeat "Spirited Youth" with "Your child will lend their aid in combat, occasionally dealing damage to the enemy.";
	if "Spirited Youth" is listed in feats of player and number of entries in childrenfaces is greater than 2:
		addfeat "Youthful Tides" with "Once in a while, all of your kids will swarm to your aid in battle.";
	if charisma of player is greater than 14:
		addfeat "Haggler" with "You are an especially skilled haggler. Sometimes, you end up with two of what you are trading for!";
		if player is not lonely:
			addfeat "Good Teacher" with "Your pets gain levels much more quickly than normal.";
	addfeat "Hardy" with "Increase your max HP by 8.";
	if stamina of player is greater than 14:
		addfeat "Spartan Diet" with "You don't need 2 liters of water and great feasts to keep you going! You become thirsty and hungry slower.";
		addfeat "Iron Stomach" with "Your belly has nano resistance! Eating or drinking infectious items fails to change you.";
		addfeat "Toughened" with "You take less damage than others(-20% damage)";
	if intelligence of player is greater than 14:
		addfeat "Fast Learner" with "You assimilate new information rapidly. -20% xp needed to level.";
		addfeat "Expert Medic" with "You are especially good at using medkits, +25% hitpoints restored per use, and a 20% chance of saving a kit when it should be lost.";
	addfeat "Wary Watcher" with "Always on guard, creatures won't gain first strike on you.";
	if perception of player is greater than 14:
		addfeat "Magpie Eyes" with "You love shining things. Especially shining things on the defeated bodies of your enemies. Increased odds of drops.";
		addfeat "Expert Hunter" with "Your chances of hunting a specific critter with the hunt command increases from 4 X to 8 X.";
		if "Expert Hunter" is listed in feats of player:
			addfeat "Master Baiter" with "You are virtually assured victory when hunting a specific creature. Your proficiency doubles from 8X to 15X.";
	if dexterity of player is greater than 14:
		addfeat "Martial Artist" with "You have basic martial arts training, increasing the damage you cause when you have no weapon.";
		if "Martial Artist" is listed in feats of player:
			addfeat "Black Belt" with "Your martial artistry is amazing. Your damage increases further while unarmed, and you have a small(10%) chance of avoiding hits that would otherwise have landed.";
			addfeat "Natural Armaments" with "You gain additional power based on the mutation of your body, borrowing the natural weapons of your infection.";
		addfeat "Stealthy" with "Your chance of running into a monster is decreased while you are scavenging or exploring.";
	addfeat "Automatic Survival" with "You forage a little here, a little there. This is a mildly cheating feat, taking it will impact your score negatively, but will remove food and water as a concern.";
	if strength of player is greater than 14:
		addfeat "Strong Back" with "You can carry impressive amounts of stuff. +50 lb tolerance.";
	if level of player is greater than 1:
		addfeat "More Time" with "You have some more precious time. Though who'd want to stay around here longer? Wierdo!";
	if hp of doctor matt is greater than 4:
		addfeat "Microwaved" with "Thanks to the good advice, you have a great idea! If you can clean water, why not yourself? Genius. Gives you a very potent resistance to species reassignment.";
	[pending - currently locked]
	if hospquest is greater than 99:
		addfeat "Rapid Healer" with "Increased healing during recovery time and minor increase to healing items.";
		if stamina of player > 16 and "Rapid Healing" is listed in feats of player:
			addfeat "Regeneration" with "Further increased healing based on level and from healing items.";
		if "Mutable" is not listed in feats of player:
			addfeat "Resistant" with "You are more resistant to random physical changes from infection.";
		if "Resistant" is not listed in feats of player:
			addfeat "Mutable" with "You are more prone to physical changes from mutation.";
		addfeat "Mighty Mutation" with "More resistant to decreasing stats from random mutation.";
		if "Mighty Mutation" is listed in feats of player:
			addfeat "Bestial Power" with "Your body will no longer drop in stats from random mutation.";
		addfeat "Gas Cloud" with "Create a dissipating cloud to help you flee.";
		addfeat "Powerful" with "Boosts your potential damage by up to 25%.";
		if "Powerful" is listed in feats of player:
			addfeat "Mayhem" with "Random increase in damage based on level.";
		addfeat "Tail Strike" with "If available, you may randomply score an additional hit with your monstrous tail.";
		addfeat "Perky" with "You are of positive spirits, regaining morale gradually and +20% max morale.";
		addfeat "Flash" with "Your skin/fur/scales will occasionally flash bright light, reducing your foes chance to hit.";
		if "Flash" is listed in feats of player:
			addfeat "Dazzle" with "Your flash can now sometimes bedazzle your enemy, making them lose their chance to retaliate.";
		if charisma of player is greater than 14:
			if "Good Teacher" is listed in feats of player:
				addfeat "Ringmaster" with "Your body will no longer drop in stats from random mutation.";



This is the gainfeat rule:
	choose row Current Menu Selection in table of gainable feats;
	let nam be title entry;
	say "Are you sure you want '[title entry]': [description entry][line break]?";
	if player consents:
		add nam to feats of player;
		say "You have gained '[nam]'!";
		wait for any key;
		decrease menu depth by 1;
		increase featgained of player by 1;
		if nam is "Automatic Survival", decrease score by 600;
		if nam is "More Time", extend game by 24;
		if nam is "Hardy":
			increase maxhp of player by 8;
			increase hp of player by 8;
		if nam is "City Map":
			now Beach Plaza is known;			
			now Outside Trevor Labs is known;			
			Now Smith Haven Mall Lot is known;
			now Park Entrance is known;			
			now City Hospital is known;			
			Now State fair is known;
			Now Approaching the Capitol Building is known;
			Now Plant Overview is known;
			now Ravaged Power Plant is resolved;	[removes the random event for discovering the power plant]
			Now Entrance to the Red Light District is known;
			Now Entrance to the High Rise District is known;
			Now Zoo entrance is known;
			Now Dry Plain is known;
			Now Museum Foyer is known;


Feats ends here.