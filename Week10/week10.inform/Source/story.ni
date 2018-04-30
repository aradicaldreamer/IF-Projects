"week10" by Matthew Deline

The GDS is a room.

The chair is an enterable supporter in the GDS. Some cake is in the GDS. Some cake is edible. A present is in the GDS.

To birthday greet (N - a number):
	if it is birthdayish:
		say "Happy birthday to you!";
		repeat with x running from 1 to N:
			if x is less than N:
				say "![run paragraph on]";
			otherwise:
				say "!"

After entering the chair:
	birthday greet one.

After eating some cake:
	birthday greet three;
	now the player has the cake.


To decide whether it is birthdayish:
	if time of day is after 9:05 AM, decide yes;
	decide no.
	
To decide which object is the birthdayest:
	if the player can see a present, decide on a present;
	if the player can see some cake, decide on some cake; 
	decide on a chair.
	
Unwrapping is an action applying to one touchable thing. Understand "unwrap [thing]" as unwrapping.

Carry out unwrapping a present:
	now the present is nowhere.
	
Birthdaying is an action applying to nothing. Understand "birthday" as birthdaying.

Carry out birthdaying:
	let x be the birthdayest;
	try taking x.
	
Professor Plum is a person. Miss Scarlet is a person. Colonel Mustard is a person. Lady Peacock is a person. Mrs White is a person. Mr Green is a person.

To decide which person is the murder suspect:
	decide on the person produced by murder suspecting rulebook.

The murder suspecting rulebook is a rulebook producing a person.

Murder suspecting (this is the default murder suspect rule):
	rule succeeds with result Professor Plum.
	
Murder suspecting when the player can see the present (this is the present is present rule):
		rule succeeds with result Mrs White.

Murder suspecting when the player carries some cake (this is the carrying cake rule):
	rule succeeds with result Mr Green.
	
The carrying cake rule is listed before the present is present rule in the murder suspecting rulebook.
	
Accusing is an action applying to nothing. Understand "accuse" as accusing.

Report accusing:
	let x be the murder suspect;
	say "I accuse [x]!".