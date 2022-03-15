function onCreate()
	-- background shit

	makeLuaSprite('mountain', 'New_Dieland_4', -480, -300);
	setScrollFactor('mountain', 1.0, 1.0);

	makeLuaSprite('trees', 'New_Dieland_3', -565, -350);
	setScrollFactor('trees', 0.9, 0.9);
	scaleObject('trees', 1.0, 1.0);

	makeLuaSprite('grass', 'New_Dieland_2', -565, -350);
	setScrollFactor('grass', 0.9, 0.9);
	scaleObject('grass', 1.0, 1.0);

	makeLuaSprite('sky', 'New_Dieland_1', -500, -250);
	setScrollFactor('sky', 1.3, 1.3);
	scaleObject('sky', 1.0, 1.0);

	makeAnimatedLuaSprite('FireONE','FireStage', -300,500)
	addAnimationByPrefix('FireONE','dance','FireStage',24,true)
	objectPlayAnimation('FireONE','dance',false)
	setScrollFactor('FireONE', 0.9, 0.9);
	scaleObject('FireONE', 2.5, 2.5)

	makeAnimatedLuaSprite('FireTWO','fireglow', 0,50)
	addAnimationByPrefix('FireTWO','dance','fireglow',24,true)
	objectPlayAnimation('FireTWO','dance',false)
	setScrollFactor('FireTWO', 0.9, 0.9);
	scaleObject('FireTWO', 2, 2)

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		--[[makeLuaSprite('example', 'New', -500, -250);
		setScrollFactor('example', 1.3, 1.3);
		scaleObject('example', 1.0, 1.0);--]]

	end

	addLuaSprite('mountain', false);
	addLuaSprite('FireTWO', false);
	addLuaSprite('trees', false);
	addLuaSprite('grass', false);
	addLuaSprite('sky', false);
	addLuaSprite('FireONE', true);

	setProperty('FireONE.antialiasing', true)

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end