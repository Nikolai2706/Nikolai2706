function onCreate()
	-- background shit
	makeLuaSprite('trees', 'Island_1', -390, -300);
	setScrollFactor('trees', 1.0, 1.0);
	scaleObject('trees', 1.4, 1.4);

	makeLuaSprite('bushes', 'Island_2', -370, -300);
	setScrollFactor('bushes', 0.9, 0.9);
	scaleObject('bushes', 1.5, 1.5);

	makeLuaSprite('grass', 'Island_3', -370, -300);
	setScrollFactor('grass', 0.9, 0.9);
	scaleObject('grass', 1.5, 1.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('vines', 'Island_4', -500, -300);
		setScrollFactor('vines', 1.3, 1.3);
		scaleObject('vines', 0.9, 0.9);
		
	end

	addLuaSprite('trees', false);
	addLuaSprite('bushes', false);
	addLuaSprite('grass', false);
	addLuaSprite('vines', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end