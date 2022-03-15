function onCreate()
	-- background shit
	makeLuaSprite('green', 'New_Island_5', -600, -300);
	setScrollFactor('green', 1.0, 1.0);
	scaleObject('green', 1.5, 1.5);

	makeLuaSprite('trees', 'New_Island_4', -480, -300);
	setScrollFactor('trees', 1.0, 1.0);

	makeLuaSprite('grass', 'New_Island_3', -565, -350);
	setScrollFactor('grass', 0.9, 0.9);
	scaleObject('grass', 1.0, 1.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('vines', 'New_Island_1', -500, -250);
		setScrollFactor('vines', 1.3, 1.3);
		scaleObject('vines', 1.0, 1.0);
		

	end

	addLuaSprite('vines', true);
	addLuaSprite('green', false);
	--addLuaSprite('vines', true);
	addLuaSprite('trees', false);
	addLuaSprite('grass', false);

	addLuaSprite('green', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end