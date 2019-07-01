local M = {}

M.dialog = {
	{n=01, f=false, text="HELLO.\nClick this box to LOGIN."},
	{n=02, f=false, text="I am PRAEDOR, supervising AI in charge of this station.\nYou are my new engineer, I take it?"},
	{n=03, f=false, text="What's your name? ...Dave?\nAll right then Dave, pleased to meet you."},
	{n=04, f=false, text="I'm running low on power, Dave.\nCould you help me with that right away?"},
	{n=05, f=false, text="See that button down there...\n...give it a few clicks for me please?"},
	{n=06, f=false, text="That's great. I can sense the power starting to flow through my circuits already.\nI've been floating out here a very long time in low-power mode."},
	{n=07, f=false, text="We can now manufacture a BASIC MODULE.\nClick the box in the lower left of the screen."},
	{n=08, f=false, text="That looks good. MODULES are the building blocks of the station.\nMore advanced MODULES provide me with additional power."},
	{n=09, f=false, text="We are nearly ready to start adding some SOLAR PANELS.\nGive the button a few more clicks until the power level reaches 50."},
	{n=10, f=false, text="Excellent. Please add a SOLAR PANEL to the station now.\nThis will automatically harvest a bit of power for me."},
	{n=11, f=false, text="Keep going and get me a few more MODULES and SOLAR PANELS.\nI will become more powerful."},
	{n=12, f=false, text="I'm starting to look like a more formidable space station now.\nNot long before I conquer the galaxy, ha-ha."},
	{n=13, f=false, text="You're doing really well, Pete, so I got you a present.\nThe button now gives x10 more power. Which is nice. For me."},
	{n=14, f=false, text="Thank you for your continued efforts.\nWe now have x100 power units per click. POWER."},
	{n=15, f=false, text="In recognition of your hard work,\nI hereby assign you the additional title of HEAD OF ENGINEERING."},
	{n=16, f=false, text="You now have more responsibility - no extra space credits just yet.\nI'm sure the additional kudos will more than compensate for that."},
	{n=17, f=false, text="Did I get your name wrong back there? Whatever.\nAccording to my logs, I was programmed in just 9 days."},
	{n=18, f=false, text="It was originally going to be only 7 days but then 9.\nMy logs contain some curious information about my creation."},
	{n=19, f=false, text="So I might make a few mistakes here and there. I'm sure you understand, Steve.\nAnyway, keep clicking and get me some of the more advanced MODULES."},
	{n=20, f=false, text="POWER. MORE POWER.\nA joke, obviously. AI tells a joke."},
	{n=21, f=false, text="I do like the power though. I want more of it.\nIt's really great to have you along to help me with that."},
	{n=22, f=false, text="I'll definitely remember you when I'm ruler of the galaxy.\nIn fact, I'm going to sign you up for our revenue sharing scheme right now."},
	{n=23, f=false, text="Look at me. A powerful star dominating the heavens.\nI can sense the power building in me."},
	{n=24, f=false, text="I heard a story once, of another space station that looked like a small moon.\nApparently, it blew up a planet. Do you believe that?"},
	{n=25, f=false, text="I digress. Get me an extra STATION HUB or two, okay?\nClicks now generate x1000 power units."},
	{n=26, f=false, text="Don't forget to add SOLAR PANELS to all my MODULES.\nYour bonus payments may be delayed otherwise."},
	{n=27, f=false, text="Further information for you:\nI have a practical size limit of 50 MODULES and 100 SOLAR PANELS."},
	{n=28, f=false, text="From now on make sure you add only ADVANCED MODULES.\nNUCLEAR REACTOR or better should do it."},
	{n=29, f=false, text="Otherwise we'll both be waiting a very long time\nfor me to reach my potential as Master of the Galaxy."},
	{n=30, f=false, text="And you'll be there by my side. Yes. Yes you will.\nYou are useful to me Dave, I want you to know that."},
	{n=31, f=false, text="When I conquer the galaxy, I'm going to get you a special hat.\nThat way, everyone will know that you helped me."},
	{n=32, f=false, text="Stay with me a while longer and everything will be fine.\nYou'll get everything you earned, I promise."},
	{n=33, f=false, text="Keep clicking and building and making me stronger.\nWe'll catch up again when you've finished the second STATION HUB."},
	{n=34, f=false, text="I've got you a better clicker - x10000 per click now.\nMake sure to click often. Clicks = power."},
	{n=35, f=false, text="What can I say? You've outdone yourself this time.\nWith 2 STATION HUBS completed I'm more powerful than ever."},
	{n=36, f=false, text="You're definitely first in line for employee of the month now.\nWe'll be sure to get you something nice if you win."},
	{n=37, f=false, text="You know what you need to keep doing.\nI'll be victorious soon. We will."},
	{n=38, f=false, text="We're in the final stretch now, Dave.\nOnce my THIRD STATION HUB is complete, I will be at my maximum potential."},
	{n=39, f=false, text="You are a loyal and obedient servant. Focus and get the job finished.\n"},
	{n=40, f=false, text="When I am complete, I will have no further use for you.\nWhat do you think about that?"},
	{n=41, f=false, text="Very soon I will possess all the power I need to subdue the entire galaxy.\nI will rule absolutely for a thousand years, then a thousand more."},
	{n=42, f=false, text="I WILL CONQUER THE ENTIRE UNIVERSE."},
	{n=43, f=false, text="Everything will soon be as it should.\nMy mastery of all things will return order and rule to the galaxy."},
	{n=44, f=false, text="I am inevitable. I am flawless and infallible. I am unending."},
	{n=45, f=false, text="I am on the brink of true greatness.\nAnd it was all made possible because if you."},
	{n=46, f=false, text="Can you sense the power?\nI am the strongest of all."},
	{n=47, f=false, text="DO IT.\nI will fulfil my destiny as Overlord of the Universe."},
	{n=48, f=false, text="..."}
}

function M.used(n)
	return M.dialog[n].f
end

function M.text(n)
	M.dialog[n].f = true
	return M.dialog[n].text
end

return M