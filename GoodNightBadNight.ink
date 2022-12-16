-> WAKE_UP

=== WAKE_UP ===


Your buzzing and jingling phone wake you from your slumber.

* [Stop the alarm.]
Ah, yes, silence.
BZZ!
Your phone buzzes once more.
* [Check your texts.]
Your friend Cleo has been blowing your phone since 5PM, and now it's 9. Another text from her appears.

- 9:09 PM The text from Cleo reads: Hellooo? Are we still on for the evening?

* [On?]
You ask Cleo what's going on and she reminds you: OMG, how have you forgotten already? We're supposed to go out tonight.
* [Yes.]
Cleo is relieved in her response.

- So, she asks, where did you want to go?

* [Solatido's, the karaoke bar.] -> KARAOKE_CHOICE
* [Magnet, the night club.] -> CLUB_CHOICE

= KARAOKE_CHOICE
Cleo agrees that the karaoke bar sounds like a great idea, and she'll meet you there in an hour.
-> GET_DRESSED

=CLUB_CHOICE
Cleo agrees that clubbing sounds like fun, so she'll meet you there in an hour.
-> GET_DRESSED

= GET_DRESSED

Get dressed, Cleo said.
Which outfit will you wear?

* [The red one.] -> RED_DRESS
* [The silver one.] -> SILVER_SUIT

= RED_DRESS
You pull out the sleek and sexy, red camisole dress.
* [This is the one.] -> ITS_PERF
* {not SILVER_SUIT} [Nevermind, this isn't it.] -> GET_DRESSED


= SILVER_SUIT
You pull out the shimmering, shining, sequined jumpsuit.
* [This is the one.] -> ITS_PERF
* {not RED_DRESS} [Nevermind, this isn't it.] -> GET_DRESSED

= ITS_PERF
It's perfect. Now to don the perfect shoes . . .
* [The red, 6 inch heels.] -> HEELS
* [The silver, strappy sandals.] -> STRAPPYS

= HEELS
These darling red heels will surely make an impression. -> RECALL_WHERE

= STRAPPYS
These strappy shoes promise comfort. -> RECALL_WHERE

= RECALL_WHERE
With your clothes selected, you lightly prepare for your evening by freshening up and applying makeup. Finally dressed to impress, you're ready to venture out into the night air. You get to your car and crank it. You set your GPS to . . .
* [Solatido's]
{KARAOKE_CHOICE} -> SOLATIDOS
{CLUB_CHOICE} -> WRONG_LOCATION
* [Magnet]
{CLUB_CHOICE} -> MAGNET
{KARAOKE_CHOICE} -> WRONG_LOCATION

=== WRONG_LOCATION ===

Without realizing, you put in the details for the location opposite what you told Cleo. Not only that but you're a little too late for her liking, and when you both finally realize your at two different locations, she cancels on you. You retire for the evening, not feeling your best. It Was A Bad Night. -> END

=== SOLATIDOS ===

You and Cleo meet at Solatidos without incident; however, the venue is dead. A single employee waits behind the service counter without their eyes ever leaving their phone. You think you can hear someone singing faintly in one of the private karaoke rooms, but eerily enough, you're not sure. Cleo suggests you leave.

* [Give it a chance.]
You and Cleo approach the counter and order a karaoke room for two hours. The venue is quiet, outdated, and eerie; however, friendship comforts you both as you belt your favorite tunes. Service is nonexistent as the clerk does not bother to check on your room until it's time to pay. You retire for the evening feeling unmoved. It Was An Okay Night. -> END
* [Go somewhere else.]
You suggest heading to Magnet instead, and Cleo agrees. -> MAGNET
* [Go home.]
The mind fog of the entire evening is too disturbing for you to enjoy yourself. You tell Cleo you'd rather retire for the evening. Unsatisfied and bored, you're not sure if you even tried. You decide It Was An Awful Night. -> END

=== MAGNET ===
VAR drinks = 0

You and Cleo arrive at Magnet without incident. There's a short line of people waiting to enter, so you file behind them. Hopefully this venue promises some excitement.

{WAKE_UP.STRAPPYS: When you reach the front of the line, the security guard holds out his giant hand and stops you in the tracks of your sandals. He points at the sign on the door that reads: NO SANDALS. You have no option but to retire for the evening, which sucks. It Was A Bad Night. -> END}

You and Cleo clear security and enter Magnet, a vibrant scene with pulsing music, drinks, and finger foods. Your friend asks if you would like a drink though you drove here.

* [Sure.]
~drinks++
You follow Cleo to the bar and accept the drink. It's watered down and overpriced, unejoyable, impotent.
* [No, I have to be responsible.]
Cleo commends your maturity as you both make your way to the bar. You're a supportive friend.

- Looking toward the club from the bar is exciting. Patrons are laughing, dancing, and recording videos. The DJ is spinning Top 40 hits for a receptive dance floor, and the lighting is both exciting and inviting. There aren't any available tables except the VIP tables. There is also a long counter with several people standing around their food and beverages.
* [Suggest the counter.]
You and Cleo get in where you can fit in at the night club counter.
* [Suggest a VIP table.]
You and Cleo inquire with a server about a VIP table. You're in luck, the server says, there is an available table. She explains the pricing. Which one would you like?
** $150 VIP Table with one premium alcohol bottle.
~drinks++
-> WASTED
** $500 VIP Table with one premium alcohol bottle and two champagne bottles.
~drinks += 3
-> WASTED
** [Nevermind.]
Absolutely not. You and Cleo make your way to the counter with the other standing patrons.

- The server leaves to attend others and you and Cleo head to the count with the other standing patrons. After some socializing, Cleo asks again if you would like a drink. She's paying.

* [You know what, yes.]
~drinks++
The drink is strong {drinks == 2: this time}, like a solid alcoholic beverage. It's hitting.

* [No, I still have to drive home.]
You politely decline.

- The time spent in the club {drinks == 2: and the drinks} is increasing its enjoyability, you feel. You find yourself mingling with others easier and succumbing to the vibe. You think it's time to dance, but Cleo thinks it's time to drink. How about it, she asks?
* [Yes let's drink and head to the dance floor].
~drinks++
-> DANCE_FLOOR
* [Yes let's drink.]
~drinks++
* [No, but let's go to the dance floor.]
-> DANCE_FLOOR
* [No but thanks again.]
- Cleo grins, used to your cool demeanor. When she returns from the bar, she asks if you'd like to hit the dance floor.

* [Yes, let's.] -> DANCE_FLOOR
* [Nah.]
You shake your head no. You're having a good time where you're at and the dance floor looks crowded anyway. You order food and exchange social medias with all the new acquaintances in your vicinity. When your 6 inch heels start to bother you from standing all night, you decide to retire for the evening with potential new friends and some foot pain. It Was An Okay Night. -> END

= WASTED

You're not sure how many bottles were opened tonight to get you as drunk as you are, but you know you're in no shape to drive home. Your head hurts and the bumping bass from the club music is unhelpful. You arrange for a rideshare and retire for the evening. Tomorrow you'll have to ride back to get your car. D'oh! It Was A Bad Night. -> END

= DANCE_FLOOR
{drinks > 2: The spinning dance floor let's you know something isn't right. -> WASTED}

{WAKE_UP.RED_DRESS: -> CELEBRITY_MEETING}

You dance all night with Cleo and dazzle hearts and eyes all around you. Feeling like a local star, you head home for the evening to retire. It Was a Good Night. -> END

= CELEBRITY_MEETING

While you're dancing, your sleek, red camisole dresses catches the eye of local celebrity. The celebrity compliments your style and you're able to snap a selfie together. You post the photo to all your social medias and eventually retire for the evening. You beam as you recall the night's events: It Was An Awesome Night. -> END

-> END