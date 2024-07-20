pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
music(0)
-- poke for custom font enabling
--poke(0x5f58,0x81)
-- poke for custom font data
--poke(0x5600,unpack(split"4,8,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,7,7,7,7,0,0,0,0,7,7,7,0,0,0,0,0,7,5,7,0,0,0,0,0,5,2,5,0,0,0,0,0,5,0,5,0,0,0,0,0,5,5,5,0,0,0,0,4,6,7,6,4,0,0,0,1,3,7,3,1,0,0,0,7,1,1,1,0,0,0,0,0,4,4,4,7,0,0,0,5,7,2,7,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,3,3,0,0,0,5,5,0,0,0,0,0,0,2,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,0,2,0,0,0,5,5,0,0,0,0,0,0,5,7,5,7,5,0,0,0,7,3,6,7,2,0,0,0,5,4,2,1,5,0,0,0,3,3,6,5,7,0,0,0,2,1,0,0,0,0,0,0,2,1,1,1,2,0,0,0,2,4,4,4,2,0,0,0,5,2,7,2,5,0,0,0,0,2,7,2,0,0,0,0,0,0,0,2,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,2,0,0,0,4,2,2,2,1,0,0,0,0,7,5,5,7,0,0,0,0,3,2,2,7,0,0,0,0,7,4,1,7,0,0,0,0,7,4,6,7,0,0,0,0,5,5,7,4,0,0,0,0,7,1,4,7,0,0,0,0,1,7,5,7,0,0,0,0,7,4,4,4,0,0,0,0,7,7,5,7,0,0,0,0,7,5,7,4,0,0,0,0,2,0,2,0,0,0,0,0,2,0,2,1,0,0,0,4,2,1,2,4,0,0,0,0,7,0,7,0,0,0,0,1,2,4,2,1,0,0,0,7,4,6,0,2,0,0,0,2,5,5,1,6,0,0,0,0,6,5,7,5,0,0,0,0,3,3,5,7,0,0,0,0,6,1,1,6,0,0,0,0,3,5,5,3,0,0,0,0,7,3,1,6,0,0,0,0,7,3,1,1,0,0,0,0,6,1,5,7,0,0,0,0,5,5,7,5,0,0,0,0,7,2,2,7,0,0,0,0,7,2,2,3,0,0,0,0,5,3,5,5,0,0,0,0,1,1,1,6,0,0,0,0,7,7,5,5,0,0,0,0,3,5,5,5,0,0,0,0,6,5,5,3,0,0,0,0,6,5,7,1,0,0,0,0,2,5,3,6,0,0,0,0,3,5,3,5,0,0,0,0,6,1,4,3,0,0,0,0,7,2,2,2,0,0,0,0,5,5,5,6,0,0,0,0,5,5,7,2,0,0,0,0,5,5,7,7,0,0,0,0,5,2,2,5,0,0,0,0,5,7,4,3,0,0,0,0,7,4,1,7,0,0,0,3,1,1,1,3,0,0,0,1,2,2,2,4,0,0,0,6,4,4,4,6,0,0,0,2,5,0,0,0,0,0,0,0,0,0,0,7,0,0,0,2,5,5,1,6,0,0,0,0,6,5,7,5,0,0,0,0,3,3,5,7,0,0,0,0,6,1,1,6,0,0,0,0,3,5,5,3,0,0,0,0,7,3,1,6,0,0,0,0,7,3,1,1,0,0,0,0,6,1,5,7,0,0,0,0,5,5,7,5,0,0,0,0,7,2,2,7,0,0,0,0,7,2,2,3,0,0,0,0,5,3,5,5,0,0,0,0,1,1,1,6,0,0,0,0,7,7,5,5,0,0,0,0,3,5,5,5,0,0,0,0,6,5,5,3,0,0,0,0,6,5,7,1,0,0,0,0,2,5,3,6,0,0,0,0,3,5,3,5,0,0,0,0,6,1,4,3,0,0,0,0,7,2,2,2,0,0,0,0,5,5,5,6,0,0,0,0,5,5,7,2,0,0,0,0,5,5,7,7,0,0,0,0,5,2,2,5,0,0,0,0,5,7,4,3,0,0,0,0,7,4,1,7,0,0,0,3,1,1,1,3,0,0,0,1,2,2,2,4,0,0,0,6,4,4,4,6,0,0,0,2,5,0,0,0,0,0,0,0,0,0,0,7,0,0,0,127,127,127,127,127,0,0,0,85,42,85,42,85,0,0,0,65,127,93,93,62,0,0,0,62,99,99,119,62,0,0,0,17,68,17,68,17,0,0,0,4,60,28,30,16,0,0,0,28,46,62,62,28,0,0,0,54,62,62,28,8,0,0,0,28,54,119,54,28,0,0,0,28,28,62,28,20,0,0,0,28,62,127,42,58,0,0,0,62,103,99,103,62,0,0,0,127,93,127,65,127,0,0,0,28,4,4,7,7,0,0,0,62,99,107,99,62,0,0,0,8,28,62,28,8,0,0,0,0,0,85,0,0,0,0,0,62,115,99,115,62,0,0,0,8,28,127,62,34,0,0,0,62,28,8,28,62,0,0,0,62,119,99,99,62,0,0,0,0,5,82,32,0,0,0,0,0,17,42,68,0,0,0,0,62,107,119,107,62,0,0,0,127,0,127,0,127,0,0,0,85,85,85,85,85,0,0,0"))
PIERCING = 1
SLASHING = 2
BLUNT = 3
SCENE_LEFT_EDGE = 20
--[[ TODO
    fix rangers
    fix hole generation
    fix draw duplication
    add position getter()
    add enemy stat tables
    add hole gameover
    add game name - something dark and gloomy ex: Nightfall, Darkveil
    add splash art
    add rusters
    add berserkers
    add "biomes" - aka new map areas
    add enemies to biomes
    add gold variety
    add shop variety
    spike seperate weapons from shields
    spike weapons override armor (instead of stack)
    spike map tile balance
    spike unique items
]]--


function _init()
    -- tables which will hold which enemies and item
    -- the generator can do
    itemWeightTable = {1,1,1,2,2,3,3,3,4,5,6,7}
    enemyWeightTable = {1,1,1,2,2,4,4}
    shopWeightTable = {1,2}
        -- 1 enemy, 2 item, 3 shop, 4 nothing
    entityWeightTable = {1,1,1,1,1,2,2,2,2,3,4}
    -- player obj
    player = {
        maxHealth = 15,
        health = 10,
        position = 1,
        shield = 0,
        gold = 0,
        category = "player",
        type = 2,
        weapon = 0,
        damage = 0
    }
    -- dungeon. It is always a 3x5 area, where 5th row is offscreen
    -- player can step left and right and down, dungeon moves up on each
    -- step. When player is over a tiles, a resolution is given
    dungeon = {
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil}
    }
    stepCounter = 0
    defeatCounter = 0
    -- generate initial dungeon
    for i=1,3 do
        for j = 2,5 do
            dungeon[i][j] = create_tile_entity()
        end
    end
    -- empty object
    vacant = {}
    -- state machine variable
    state = "game"
    -- collection to hold every object that needs
    -- lerping of some sort
    progress_holder = {}
    -- collection to hold floating texts
    floatingTextCollection = {}
    -- step counter
    particles = {}
end


-- smooth move library by Werxzy
function smooth_move(x, ax, dx, acc, damp, lim)
    dx += (x - ax) * acc -- accelerate
    ax += dx -- move
    dx *= damp -- dampen
-- limit, not always necessary
    if abs(x - ax) < lim
    and abs(dx) < lim then 
        dx,ax = 0, x
    end
    return ax, dx
end

function add_particle(_x, _y, _sx, _sy, _lifeTime, _color)
    -- create particle
    local part = {
        x = _x,
        y = _y,
        sx = _sx, --speed for the particle if they move around
        sy = _sy, -- same but y direction
        lifeTime = _lifeTime,
        color = _color, -- color to draw
        type = _type -- type of it
    }
    add(particles, part)
end

-- create an enemy with type and 
-- return it back. Enemies will hold
-- damage: how much damage it will deal to the player
-- type: which enemy it is
-- category: "enemy" tells the system to handle this object as enemy
-- weakness: enemies will take double damage from their weakness
-- damage will calculate with: damageTaken = enemy.damage - player.damage - player.shield
function create_enemy(_type)
    local en = {
        damage = _type*2+flr(stepCounter/10),
        type = _type,
        category = "enemy",
        weakness = flr(rnd(3)+1),
        shot = false,
        skill = _type == 4 and 1 or nil
    }
    -- skill icons
    -- 1 ranged
    return en
end

-- create an item with type and 
-- return it back. Enemies will hold
-- type: which item it is
-- category: "item" tells the system to handle this object as item
function create_item(_type)
    local item = {
        type = _type,
        category = "item"
    }

    -- let's define an attribute table
    -- from which items can grab their values
    local weaponDamageTable = {
        -- spear
        {2,3,3,3,4},
        -- sword
        {1,2,2,2,3},
        -- mace
        {3,4,4,4,5}
    }
    local weaponShieldTable = {
        -- spear
        {2,3,3,3,4},
        -- sword
        {3,4,4,4,5},
        -- mace
        {1,2,2,2,3}
    }
    -- now if we are generating a weapon
    -- which is type 5-6-7, then assign 
    -- values to the item object based 
    -- on a random value from the tables above
    if _type >= 5 and _type <= 7 then
        item.damage = rnd(weaponDamageTable[_type-4])
        item.shield = rnd(weaponShieldTable[_type-4])
    end
    return item
end

-- create a shop spot on the dungeon
-- they have a cost associated to them
-- if player steps on top, spends gold auto
-- and get's the item
-- _type: which shop item it is
-- 1 - hearts, 2 damage up
function create_shop(_type)
    local costTable = {5,2}
    local item = {
        type = _type,
        category = "shop",
        cost = costTable[_type]
    }
    return item
end

-- creates a random entity that might
-- be a shop, enemy, item
function create_tile_entity()
    local randomTile = rnd(entityWeightTable)
    if randomTile == 1 then
        return create_enemy(rnd(enemyWeightTable))
    elseif randomTile == 2 then
        return create_item(rnd(itemWeightTable))
    elseif randomTile == 3 then
        return create_shop(rnd(shopWeightTable))
    end
end

-- creates a projectile for ranged enemies
-- atm it is just a "progressing" tile that 
-- triggers progress animations and once it's done
-- it decreates the player's hp by damage
-- x, y: starting positions
-- goalx, goaly: goal to interpolate to
-- type: which projectile type it is (mostly for sprites)
-- damage: how much it deals
function create_projectile(_x, _y, _goalX, _goalY, _type, _damage)
    local proj = {
        category = "projectile",
        type = _type,
        damage = _damage
    }
    local spot = {
        x = _x,
        y = _y,
        ax = 0,
        ay = 0,
        goalX = _goalX,
        goalY = _goalY,
        entity = proj,
        inPlace = false
    }
    add(progress_holder, spot)
end

-- my standard floating text creation.
-- create a text at x,y coordinates
-- that will move with ax,ay values each frame
-- will live lifetime ammount of frames and will print with color and outline
function add_floating_text(_text, _x, _y, _ax, _ay, _lifeTime, _color, _outline)
    local text = {
        x = _x,
        y = _y,
        ax = _ax,
        ay = _ay,
        lifeTime = _lifeTime,
        color = _color,
        outline = _outline,
        text = _text
    }
    add(floatingTextCollection, text)
end

-- main update, this will branch based on state machine
function _update60()
    if state == "game" then
        update_game()
    elseif state == "progress" then
        update_game_progress()
    elseif state == "over" then
        update_over()
    end
    -- updated floating texts, this should probably be an individual
    -- function
    if #floatingTextCollection > 0 then
        for i=#floatingTextCollection,1,-1 do
            local text = floatingTextCollection[i]
            text.x += text.ax
            text.y += text.ay
            text.lifeTime -= 1
            if text.lifeTime < 0 then deli(floatingTextCollection, i) end
        end
    end

    -- fireflies in the background
    -- if there are less than 8 of them,
    -- generate new ones
    if #particles < 8 then
        local ammount = flr(rnd(3)+1)
        for i=1, ammount do
            add_particle(rnd(128), rnd(128), rnd({1,-1})*rnd(), rnd({1,-1})*rnd(), rnd(60)+30, 1)
        end
    end

    -- update particles
    for part in all(particles) do
        part.x += part.sx/4
        part.y += part.sy/4
        part.lifeTime -= 1
        if part.lifeTime < 0 then del(particles, part) end
    end
end

-- dummy restart function for now
function update_over()
    if btnp(5) then
        _init()
    end
end

-- game update cycle
function update_game()
    if player.health <= 0 then
        state = "over"
    end
    local moved = false
    local oldPos = player.position
    -- step player
    if btnp(0) then player.position = max(1, player.position-1) moved = true end
    if btnp(1) then player.position = min(3, player.position+1) moved = true end
    if btnp(2) then moved = true end

    -- check if the new position is empty tile in the dungeon
    -- if so don't let the player step there
    if dungeon[player.position][2] == nil then
        player.position = oldPos
        moved = false
    end

    -- if player stepped, shift the dungeon upwards and resolve things
    if moved then progress(oldPos) moved = false sfx(20) stepCounter+=1 end
end

-- transition update, this needs a better naming as of now
function update_game_progress()
    local allInPlace = true
    for entity in all(progress_holder) do
        -- function smooth_move(x, ax, dx, acc, damp, lim)
        entity.x, entity.ax = smooth_move(entity.goalX, entity.x, entity.ax, 0.2, 0.3, 0.002)
        entity.y, entity.ay = smooth_move(entity.goalY, entity.y, entity.ay, 0.1, 0.5, 0.002)
        if (entity.ax != 0) or (entity.ay != 0) then
            allInPlace = false
        end
        -- for projectiles we actually want to check if they are
        -- in place, if so reduce player health directly
        if (entity.entity.category == "projectile") and (entity.ax == 0) and (entity.ay == 0) then
            player.health -= entity.entity.damage
            add_floating_text(-entity.entity.damage.."♥", player.position*24+SCENE_LEFT_EDGE, 96, 0, -0.3, 90, 2, 1)
            sfx(24)
        end
    end
    -- swtich back to game if
    -- everything is in place
    if allInPlace then
        -- if we moved and the player is before ranged enemies
        -- then let them shoot
        local entitiesAroundPlayer = {
            dungeon[player.position][2]
        }
        -- add neighbours
        -- todo: fix this somehow
        if player.position == 1 then
            add(entitiesAroundPlayer, dungeon[player.position+1][1])
        elseif player.position == 2 then
            add(entitiesAroundPlayer, dungeon[player.position+1][1])
            add(entitiesAroundPlayer, dungeon[player.position-1][1])
        elseif player.position == 3 then
            add(entitiesAroundPlayer, dungeon[player.position-1][1])
        end

        -- loop over neighboring ranged enemies and
        -- shot a projectile at the player if we haven't
        -- already
        -- trigger progress again with the newly added projectile obj.
        local isThereValidEnemy = false
        for entity in all(entitiesAroundPlayer) do 
            if entity and (entity.category == "enemy") and (entity.type == 4) and (entity.shot != true) then
                create_projectile(player.position*24+SCENE_LEFT_EDGE, 72, player.position*24+SCENE_LEFT_EDGE, 100, 1, 1)
                sfx(23)
                state = "progress"
                entity.shot = true
                isThereValidEnemy = true
                del(entitiesAroundPlayer, entity)
            end
        end
        if (not isThereValidEnemy) then
            state = "game"
            progress_holder = {}
        end
    end
end

-- shifting the dungeon and resolving actions
function progress(_oldPos)
    shift_dungeon()
    -- entity under the player that needs resolution
    local entity = dungeon[player.position][1]
    if entity then
        -- resolve combat
        if entity.category == "enemy" then
            sfx(21)
            local remainder = 0
            -- shield damage calculation

            -- calculate weakness in mind
            -- damage is caluclated by enemy damage - player.damage - shield
            local incomingDamage = entity.damage
            local playerDamage = entity.weakness == player.weapon and player.damage*2 or player.damage 
            incomingDamage -= playerDamage

            if incomingDamage > 0 then
                -- if we have mroe shield than damage, just reduce shield
                if player.shield >= incomingDamage and player.shield > 0 then
                    add_floating_text(-incomingDamage.."●", player.position*24+SCENE_LEFT_EDGE, 96, 0, -0.3, 90, 7, 1)
                    player.shield -= incomingDamage
                -- if we have less shield than damage, 0 out shield
                -- and calc the remainder to do to the player
                else
                    -- calc "overflow" damage
                    remainder = incomingDamage - player.shield
                    -- reset shield to 0
                end
                -- health damage calculation
                if remainder > 0 then
                    add_floating_text(-remainder.."♥", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 2, 1)
                    player.health -= remainder
                    sfx(24)
                end
            -- always reduce durability by one even if we can defeat the enemy
            else
                player.shield -= 1
                add_floating_text("-1●", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 6, 1)
            end

            -- remove the weapon is we have 0 or less shield
            if player.shield <= 0 then
                player.shield = 0
                player.weapon = 0
                player.damage = 0
                -- TODO -- reset the player's weapon as well
            end
            defeatCounter += 1
            dungeon[player.position][1] = nil
        -- item pickup calculation
        elseif entity.category == "item" then
            sfx(23)
            -- campfire
            if entity.type == 1 then 
                local healAmmount = 3
                if healAmmount + player.health > player.maxHealth then healAmmount = player.maxHealth - player.health end
                player.health += healAmmount
                add_floating_text(healAmmount.."♥", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 3, 1)
            end
            -- potion
            if entity.type == 2 then 
                local healAmmount = 6
                if healAmmount + player.health > player.maxHealth then healAmmount = player.maxHealth - player.health end
                player.health += healAmmount
                add_floating_text("+"..healAmmount.."♥", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 3, 1)
            end
            -- gold
            if entity.type == 3 then 
                player.gold += 2 
                add_floating_text("+2◆", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 9, 1)
            end
            -- shields
            if entity.type == 4 then 
                player.shield += 2 
                add_floating_text("+2●", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 6, 1)
            end
            -- pickup weapons
            if entity.type >= 5 and entity.type <= 7 then
                player.damage = entity.damage
                player.shield += entity.shield
                player.weapon = entity.type-4
                add_floating_text("+"..entity.shield.."●", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 6, 1)
            end
            dungeon[player.position][1] = nil
        -- shop tile
        elseif entity.category == "shop" then
            -- do we have the gold, if yes, spend and inidcate it
            if player.gold >= entity.cost then
                player.gold -= entity.cost
                add_floating_text(-entity.cost.."◆", player.position*24+SCENE_LEFT_EDGE, 100, 0, -0.3, 90, 9, 1)
                -- shop items
                -- hearts
                if entity.type == 1 then 
                    player.maxHealth += 1
                -- damage up
                elseif entity.type == 2 then
                    player.damage += 1 
                end
                dungeon[player.position][1] = nil
                sfx(22)
            end
        end
    end
    -- setup stuff for the transition
    -- save every non-null entity
    -- and put them into an array.
    -- they will be assigned an x,y of current position
    -- and a goalx goaly they want to lerp onto
    for i=1,3 do
        for j=1,5 do
            if (dungeon[i][j]) then
                local spot = {
                    x = i*24+SCENE_LEFT_EDGE,
                    y = 98-(j)*30+2,
                    ax = 0,
                    ay = 0,
                    goalX = i*24+SCENE_LEFT_EDGE+0.5,
                    goalY = 98-(j-1)*30+2,
                    entity = dungeon[i][j],
                    inPlace = false
                }
                add(progress_holder, spot)
            end
        end
    end
    -- add player as well
    local spot = {
        x = _oldPos*24+SCENE_LEFT_EDGE,
        y = 100,
        ax = 0,
        ay = 0,
        goalX = player.position*24+SCENE_LEFT_EDGE, 
        goalY = 100,
        inPlace = false,
        entity = player
    }
    add(progress_holder, spot)
    state = "progress"
end

-- shif the dungeon upwards and generate a new line
function shift_dungeon()
    -- placholder to copy 2-5 rows of the dungeon
    local shifted = {
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil},
        {nil,nil,nil}
    }
    -- copy those areas one lower
    for i=1,3 do
        for j=2,5 do
            shifted[i][j-1] = dungeon[i][j]
        end
    end
    -- generate a new line
    local new_line = {}
    for i=1,3 do 
        shifted[i][5] = create_tile_entity()
    end
    -- assign the new dungeon back
    dungeon = shifted
end

-- drawing entities onto the screen
-- x,y: position to draw
-- type: signals the subtype inside the category, basically holds
--       which sprite to draw
-- category: player, item or enemy, each need different draw functions
-- entity: passing the whole entity to grab data like damage and health from
function _draw_elipse(_x, _y, _type, _category, _entity)
    local typeColor = 1
    if _category == "enemy" then typeColor = 2 end
    if _category == "item" then typeColor = 3 end
    if _category == "shop" then typeColor = 9 end
    -- skip all this if it is a projectile
    if (_category != "projectile") then
        --4 side lines
        fillp(░)
        ovalfill(_x-1, _y+14, _x+15, _y+20, typeColor)
        fillp()
        local offs = time() % 0.5 > 0.25 and 0 or 1
        if _category == "enemy" then
            --draw_outline(32, _x+12, _y-3, 2)
            draw_outline(64+(_type*2)+offs, _x+4, _y+10, 1)
            local offsetForSkill = print(_entity.damage, _x+2, _y+2, 2)
            -- print skill if it has
            if (_entity.skill != nil) then
                spr(176+(_entity.skill-1), _x+4, _y+2)
            end
            spr(_entity.weakness+15, _x+13, _y+17)
        elseif _category == "player" then
            if player.health <= 0 then 
                draw_outline(9, _x+3, _y+10, 1)
            else
                draw_outline(1+offs+(player.weapon*2), _x+3, _y+10, 1)
            end
            --print(_entity.health.."/".._entity.maxHealth, _x+2, _y+2, 2)
        elseif _category == "item" then
            --draw_outline(33, _x+12, _y-3, 3)
            draw_outline(48+_type, _x+4, _y+10+offs, 1)
            if _type >= 4 and _type <= 6 then
                print(_entity.damage.."/".._entity.shield, _x+2, _y+2, 6)
            end
        elseif _category == "shop" then
            draw_outline(32+_type, _x+4, _y+10+offs, 1)
            print(_entity.cost, _x+2, _y+2, 9)
            spr(50, _x+13, _y+17)
            if _type >= 4 and _type <= 6 then
                --print(_entity.damage.."/".._entity.shield, _x+2, _y+2, 6)
            end
        end
    else
        draw_outline(134, _x+4, _y+10, 1)
    end
end

function _draw()
    if state == "game" then
        draw_game()
    elseif state == "progress" then
        draw_game_progress()
    elseif state == "over" then
        draw_over()
    end
    draw_floating_text()
    --line(SCENE_LEFT_EDGE+18, 0, SCENE_LEFT_EDGE+18, 128, 1)
end

function draw_floating_text()
    for text in all(floatingTextCollection) do
        if text.outline then
            print(text.text, text.x, text.y, text.color)
        else
            print_outline(text.text, text.x, text.y, text.color, text.outline)
        end
    end
end

function draw_over()
    draw_game()
    
    rectfill(25,25,102,82,1)
    palt(0, false)
    rectfill(26,26,101,81,0)
    fillp()
    palt(0, true)
    sspr(120, 0, 8, 8, 26, 24, 16, 16)
    sspr(120, 0, 8, 8, 86, 24, 16, 16)
    local defeated = "\^t\^w".."fallen"
    print(defeated, 64-len(defeated)/2, 30, 2)
    local finalSteps = "steps: "..stepCounter
    print(finalSteps, 64-len(finalSteps)/2, 50, 1)
    local finalScore = "vanquised: "..defeatCounter
    print(finalScore, 64-len(finalScore)/2, 60, 1)
    print("❎", 64-len("❎")/2, 68, 1)
end

function len(_text)
    return print(_text, 0, 200)
end

function draw_game()
    cls()
    for part in all(particles) do
        pset(part.x+sin(time()), part.y+sin(time()), rnd() > 0.02 and part.color or 9)
    end
    for i= 1,3 do
        for j = 1,4 do
            if (dungeon[i][j]) then
                local en = dungeon[i][j]
                local yPos = 98-(j-1)*30+2
                _draw_elipse(i*24+SCENE_LEFT_EDGE, yPos, en.type-1, en.category, en)
            end
            --print(j, 10, (j-1)*32, 2)
        end
    end
    local offs = time() % 0.5 > 0.25 and 1 or 0

    for i=1,6 do
        --spr(127+i, 2, i*10)
        --print(i, 12, i*10+1, 6)
    end

    _draw_elipse(player.position*24+SCENE_LEFT_EDGE, 100, 1, "player", player)
    print("♥"..player.health.."/"..player.maxHealth, 2, 100, 2)
    spr(player.weapon+19, 2, 108)
    local equipmentText = player.shield > 0 and player.damage.."/"..player.shield or "unarmed"
    print(equipmentText, 10, 109, 6)
    print("◆"..player.gold, 2, 116, 9)
    fillp(▒)
    palt(0, false)
    rectfill(30, 0, 128, 70, 0)
    fillp(░)
    rectfill(31, 1, 128, 31, 0)
    palt(0, true)
    fillp()
end

function draw_game_progress()
    cls()
    for part in all(particles) do
        pset(part.x+sin(time()), part.y+sin(time()), rnd() > 0.5 and part.color or 0)
    end
    for obj in all(progress_holder) do
        if obj != nil then
            _draw_elipse(obj.x, obj.y, obj.entity.type-1, obj.entity.category, obj.entity)
        end
    end
     print("♥"..player.health.."/"..player.maxHealth, 2, 100, 2)
    spr(player.weapon+19, 2, 108)
    local equipmentText = player.shield > 0 and player.damage.."/"..player.shield or "unarmed"
    print(equipmentText, 10, 109, 6)
    print("◆"..player.gold, 2, 116, 9)
    fillp(▒)
    palt(0, false)
    rectfill(0, 0, 128, 30, 0)
    palt(0, true)
    fillp()
end

-- draw the myspr sprite at x and y with a 1 pixel
-- wide outline of clr. if clr is not given on the call
-- default 7 is used instead. thickness is how thick the outline
-- should be in pixels. defaults to 1 if none given
function draw_outline(myspr, x, y, clr, thickness, x_size, y_size, flip_h, flip_v)
    -- nil check for the color parameter
    if (clr == nil) clr = 7
    if (thickness == nil) thickness = 1 
    if (x_size == nil) x_size = 1    
    if (y_size == nil) y_size = 1 
    -- set color palette to outline
    for i=1,15,1 do
        pal(i, clr)
    end

    -- handle black outline transparency issues
    if clr == 0 then
        palt(0, false)
    end

    -- draw the sprite 9 times by 1-1 offsets
    -- in each direction. the created blob is 
    -- which is the sprite's outline 
    for i=-thickness,thickness do
        for j=-thickness,thickness do
            spr(myspr, x-i, y-j, x_size, y_size, flip_h, flip_v)
        end
    end

    -- reset black color transparency
    if clr == 0 then
        palt(0, true)
    end

    -- reset color palette
    pal()

    -- draw the original sprite in the middle
    -- which causes the outline effect
    spr(myspr, x, y, x_size, y_size, flip_h, flip_v)
end
__gfx__
00000000000000000000000000000060000000600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000066660000000000006666060000000600666606000000000066660660000000000000000000000000000000000000000000000000000000000000000
00700700066660000666600006666040066660400666606006666060066660660666606600000000000000000000000000000000000000000000600000000000
000770000f060000066660000f060040066660400f060060066660600f0600660666606600000000000000000000000000000000000000000000660000000000
000770000ffff0000f0600000ffff0400f0600400ffff4440f0600600ffff0400f06006600000000000000000000000000000000000000000006000000666000
00700700600006006ffff600600006f06ffff040600006f06ffff444600006f06ffff04000666600000000000000000000000000000000000660006000060000
00000000f6666f00f0000f00f6666040f00006f0f6666000f00006f0f6666040f00006f000666600000000000000000000000000000000000060000000606000
00000000040040000400400004004040040040400400400004004000040040000400404060606006000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00022200000002000000220000600600000666000000060000006600000000000000000000000000000000000000000000000000000000000000000000000000
00002200002020000002220000066000000066000060600000066600000000000000000000000000000000000000000000000000000000000000000000000000
00020200000200000002200000066000000606000006000000066000000000000000000000000000000000000000000000000000000000000000000000000000
00200000002020000020000000600600006000000060600000600000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000200000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000670076000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00088088060000066670076600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08080888666000607707707700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88808880060406000066660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08000800000040000076670000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000404000076670000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000770000000000007000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000007670000077000000770000000000077770000000000000000000000000000000000000000000000000000000000
000008000000044000aa900000044400000776700000767000707670007007000066660000000000000000000000000000000000000000000000000000000000
000080000000744000a0900000466640000047000007670000076707076006700060060000000000000000000000000000000000000000000000000000000000
000880000077470000999a9000467640000407006076700000077000066006600070070000000000000000000000000000000000000000000000000000000000
00089800078070000000a09000466640004000000667000000400700000000000060060000000000000000000000000000000000000000000000000000000000
00499940078870000000999000044400040000000460000004000000000000000000000000000000000000000000000000000000000000000000000000000000
00040400007700000000000000000000400000004006000040000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000003333044000000000000000000000000000000060000000600000000000000000022230000000000009d9099009d9000
0000000000000000003003000000000033707044033330440066660000000000006666060000000600000000000000000020300000222300099990d909999099
000000000000000000333300003003003370704433707044006060000066660000606004006666040022230000000000002233000020300006060090060600d9
00300300000000000030300000333300037770403370704400666607006060070066660400606004002030000022230000333300002233000666609006666090
00333300003003000033330000303000003330400377704000066074006666740006600400666604003333000020300033000000003333000066069000660090
00303000003333000300003003333330330003303033304000600704006007040060066400600664020000000033330033233233330000330dddd0900dddd690
004444000030300003444430030000303444404034444330060670400606704006066004060660040344442002000020004444333344443360ddd09060ddd090
00300300004444000030030000300300030030000300304000674400006744000060060400600604004004300340043000400400004004000ddd00000ddd0090
00000000000000000000000000000000000000000000000000000000022200000000006000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
004444000000000000000000000000000000000000000000000f0f00000000000000000000000000000000000000000000000000000000000000000000000000
000000000000600000000000000000000004400000000000000f4f00000000000000000000000000000000000000000000000000000000000000000000000000
00888800000066000767670004644640002420000040040000004000ff0007600000000000000000000000000000000000000000000000000000000000000000
0088880000060000070007000009900002fff2000020020000004000044444770000000000000000000000000000000000000000000000000000000000000000
00888800066000600800080004000040000f00000450054000004000ff0007600000000000000000000000000000000000000000000000000000000000000000
0088880000600000000000000444444002fff2000220022000074700000000000000000000000000000000000000000000000000000000000000000000000000
00088000000000000000000000000000002220000000000000067600000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000222000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000022000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00022000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00022022000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00022222002200222002002200222000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00022222000200202002000200200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00002220000200202002000200002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000200002220222020002220222000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000006006660060066600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00006060000060060060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000600000660060060600000000000000000111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000
00006060006660600066600000000000000000166661610000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000166661610000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000001f1611610000000000000000000000000000000000000000000000000000000000000000000000000000000000
000009000000000000000000000000000000011ffff1410000000000000000000000000000000000000000000000000000000000000000000000000000000000
00009990009990000000000000000000000001611116f11000000000000000000000000000000000000000000000000000000000000000000000000000000000
00099999009090000000000000000000000011f66661110010000000000000000000000000000000000000000000000000000000000000000000000000000000
00009990009090000000000000000000001001141141001000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000900009990000000000000000000000010111111100010000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000100010001000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000001000100000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000022200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000022200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111110000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000001167117611000000000000000000000000000000000
00000000000000000000000000000000000000011111100000000000000000000000000000000000000001667117661000000000000000000000000000000000
00000000000000000000000000000000000000013113100000000000000000000000000000000000000001771771771000000000000000000000000000000000
00000000000000000000000000000000000000013333100000000000000000000000000000000000000001116666111000000000000000000000000000000000
00000000000000000000000000000000000000213131102000000000000000000000000000000000000000317667103000000000000000000000000000000000
00000000000000000000000000000000000020014444100020000000000000000000000000000000000030017667100030000000000000000000000000000000
00000000000000000000000000000000002000213113102000000000000000000000000000000000003000311771103000000000000000000000000000000000
00000000000000000000000000000000000020011111100020000000000000000000000000000000000030001111300030000000000000000000000000000000
00000000000000000000000000000000000000200020002000000000000000000000000000000000000000300030003000000000000000000000000000000000
00000000000000000000000000000000000000002000200000000000000000000000000000000000000000003000300000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000022200000000000000000000020200000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000200000000000000000000020200000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000020000000000000000000000022200000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000022200000000000000000000000200000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111100000000000000000000000000000000000
00000000000000000000000000000000000000000011110000000000000000000000000000000000000000013113100000000000000000000000000000000000
00000000000000000000000000000000000000000114410000000000000000011111100000000000000000013333100000000000000000000000000000000000
00000000000000000000000000000000000000011174410000000000000000013113100000000000000000013131100000000000000000000000000000000000
00000000000000000000000000000000000000117747110000000000000000013333100000000000000000113333110000000000000000000000000000000000
00000000000000000000000000000000000000178171103000000000000000213131102000000000000000131111312000000000000000000000000000000000
00000000000000000000000000000000000030178871300030000000000020014444100020000000000020134444310020000000000000000000000000000000
00000000000000000000000000000000003000117711003000000000002000213113102000000000002000113113112000000000000000000000000000000000
00000000000000000000000000000000000030011110300030000000000020011111100020000000000020011111100020000000000000000000000000000000
00000000000000000000000000000000000000300030003000000000000000200020002000000000000000200020002000000000000000000000000000000000
00000000000000000000000000000000000000003000300000000000000000002000200000000000000000002000200000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000020200000000000000000000022200000000000000000000022200000000000000000000000000000000000000000
00000000000000000000000000000000000020200000000000000000000000200000000000000000000000200000000000000000000000000000000000000000
00000000000000000000000000000000000022200000000000000000000020000000000000000000000020000000000000000000000000000000000000000000
00000000000000000000000000000000000000200000000000000000000022200000000000000000000022200000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000011111100000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000013113100000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000013333100000000000000000011111100000000000000000011111100000000000000000000000000000000000
00000000000000000000000000000000000000013131100000000000000000013113100000000000000000013113100000000000000000000000000000000000
00000000000000000000000000000000000000113333110000000000000000013333100000000000000000013333100000000000000000000000000000000000
00000000000000000000000000000000000000131111312000000000000000213131102000000000000000213131102000000000000000000000000000000000
00000000000000000000000000000000000020134444310020000000000020014444100020000000000020014444100020000000000000000000000000000000
00000000000000000000000000000000002000113113112000000000002000213113102000000000002000213113102000000000000000000000000000000000
00000000000000000000000000000000000020011111100020000000000020011111100020000000000020011111100020000000000000000000000000000000
00000000000000000000000000000000000000200020002000000000000000200020002000000000000000200020002000000000000000000000000000000000
00000000000000000000000000000000000000002000200000000000000000002000200000000000000000002000200000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__sfx__
012000000e0340e0300e0300e0300e0300e0300e0300e0350c0340c0320c0320c0320c0300c0300c0300c0350e0340e0320e0320e0320e0300e0300e0300e0351003410030100301003010032100321003210032
012000000e0340e0300e0300e0300e0300e0300e0300e035150341503215032150321503015030150301503511034110321103211030110301103011035100341003010030100301003210032100321003200000
012000001112411120111201112011120111201112011125101241012210122101221012010120101201012511124111221112211122111201112011120111251312413120131201312013122131221312213122
012000001112411120111201112011120111201112011125181241812218122181221812018120181201812515124151221512215122151201512015120151251312413120131201312013122131221312213122
011000200c0230000000000000000c6200000000000000000c0230000000000000000c6200000000000000000c023000000000000000006200000000000000000c02300000100230000000620000000062000000
011000000e0240e0200e0200e0200e0200e0200e0200e02511024110221102211025100241002010020100250e0240e0220e0220e0220e0200e0200e0200e025100241002010020100250e0240e0220e0220e022
011000000e0220e0220e0220e0220e0220e0220e02511024110250c0240c0220c0220c0220c0220c02510024100250b0240b0220b0220b0200b0200b0200b0250c0240c0200c0200c0250e0240e0220e0220e025
011000001112211122111221112211120111201112011125101241012210122101251312413120131201312511124111221112211122111201112011120111251312413120131201312511124111221112211122
0110000011122111221112211122111221112211125131241312510124101221012210122101221012511124111250e1240e1220e1220e1200e1200e1200e1251012410120101201012511124111221112211125
011000200c0030000000000000000c6200000000000000000c0030000000000000000c6200000000000000000c003000000000000000006200000000000000000c00300000100030000000620000000060000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100000c0500c0500c0500c0500c050001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
000100000615006150071500b150106500d6500c650106500b6500010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
00010000131501115012150161401c1401e1301e1201a110181101410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100001515015150151500d1500d1500d1501515015150151500010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
000200000c3500c350083500835008350083500b3500b350003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
000200000c2500c250082500825008250082500b2500b250002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200
000200000c1500c150081500815008150081500b1500b150001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
000400001d0501d050210502105025050250500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010200000c1500c1500c1500c1501015010150101501015013150131501315013150171501715017150171500e1500e1500e1500e150111501115011150111501315013150131501315015150151501515015150
010200000c1500c1500c1500c1501015010150101501015013150131501315013150171501715017150171500e1500e1500e1500e150111501115011150111501315013150131501315015150151501515015150
__music__
01 00020444
00 01030444
00 04050744
00 09060844
02 01030444
00 42434444

