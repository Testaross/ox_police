local table = lib.table
InService = player?.inService and table.contains(Config.PoliceGroups, player.inService) and player.hasGroup(Config.PoliceGroups)

RegisterCommand('duty', function()
    InService = not InService and player.hasGroup(Config.PoliceGroups) or false
    TriggerServerEvent('ox:setPlayerInService', InService)
    print(InService)
    -- lib.notify({
    --     description = InService,
    --     type = 'error'
    -- })
end)

AddEventHandler('ox:playerLogout', function()
    InService = false
    LocalPlayer.state:set('isCuffed', false, true)
    LocalPlayer.state:set('isEscorted', false, true)
end)


lib.registerMenu({
    id = 'some_menu_id',
    title = 'LS\'Five',
    position = 'top-left',
   options = {
        {label = 'Its', description = 'It has a description!', args = '1'},
        {label = 'Pretty', description = 'It has a description!', args = '2'},
        {label = 'Easy', description = 'It has a description!', args = '3'},
    }
}, function(selected, scrollIndex, args)
    if args == 1 then
        print(selected)
    elseif args == 2 then
        print(selected)
    else
        print(selected)
    end
end)

RegisterCommand('testmenu', function()
    lib.showMenu('some_menu_id')
end)


-- AddEventHandler('mz-lumberjack:client:MulchBark', function(source, amount)
--     if not treebarkprocess then 
--         local count = exports.ox_inventory:Search('count', 'treebark')
--         print(count)
--         if count > amount then
--             TriggerServerEvent("mz-lumberjack:server:MulchBark")
--         else
--             lib.notify({
--                 description = 'You need more treebark to mulch!',
--                 type = 'error'
--             })  
--         end
--     else
--         lib.notify({
--             description = 'You are already doing something... Slow down!',
--             type = 'error'
--         })  
--     end
-- end)

-- AddEventHandler('mz-lumberjack:client:BagMulch', function(source, amount)
--     if not baggingmulch then 
--         local count = exports.ox_inventory:Search('count', {'treemulch', 'emptymulchbag'})
--         if inventory then
--             for name, count in pairs(inventory) do

--             end
--         end
--             if count > amount then
--                 TriggerServerEvent("mz-lumberjack:server:BagMulch")
--             else
--                 lib.notify({
--                     description = 'You need a bag and some mulch',
--                     type = 'error'
--                 })
--             end
--         else
--             lib.notify({
--                 description = 'You are already doing something',
--                 type = 'error'
--             })
--         end
--     end)

--     AddEventHandler('mz-lumberjack:client:BagMulch', function(source, amount)
--         if not baggingmulch then 
--             local mulchBag = exports.ox_inventory:Search('count', 'emptymulchbag')
--             local mulchCount = exports.ox_inventory:Search('count', 'treemulch')
--             if mulchBag then
--                 if mulchCount > amount then
--                     TriggerServerEvent("mz-lumberjack:server:BagMulch")
--                 else
--                     lib.notify({
--                         description = 'You need a bag and some mulch',
--                         type = 'error'
--                     })
--                 end
--             else
--                 lib.notify({
--                     description = 'You need a bag ',
--                     type = 'error'
--                 })
--             end
--         else
--             lib.notify({
--                 description = 'You are already doing something',
--                 type = 'error'
--             })
--         end
--     end)

--     exports.ox_target:addGlobalPlayer({
--         {
--             icon = Config.search_img,
--             label = Config.search,
--             canInteract = function(entity, distance, coords, name)
--                 print(cache.weapon)
--                 if IsEntityPlayingAnim(entity, "missminuteman_1ig_2", "handsup_enter", 3) or IsEntityPlayingAnim(entity, "mp_arresting", "idle", 3) or IsPedDeadOrDying(entity) or IsEntityPlayingAnim(entity, 'mini@cpr@char_b@cpr_def', 'cpr_pumpchest_idle', 3) then
--                     return true
--                 end
            
--             end,
--             onSelect = function(data)
--                 exports.ox_inventory:openNearbyInventory()
--             end
    
--         },
--     })
RegisterCommand("testweapon", function()
    print(cache.weapon)
    print(joaat('weapon_pistol'))  
end)
-- exports.ox_target:addGlobalPlayer({
--     {
--         name = 'ox:option1',
--         event = 'ox_target:debug',
--         icon = 'fa-solid fa-road',
--         label = 'Option 1',
--         canInteract = function(entity, distance, coords, name, bone)
--             return true
--         end
--     },
-- })

-- -- lib.onCache('ped', function(value)
-- --     print(value)
-- --     if value then
-- --         local count = exports.ox_inventory:Search('count', 'weapon_pistol')
-- --         if count == false then return end
-- --         if count >= 1 then
-- --             SetPedComponentVariation(value, 5, 82, 0, 0);
-- --             print(value)
-- --         end
-- --     end
-- -- end)