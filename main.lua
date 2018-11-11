local InventoryNotifier_EventFrame = CreateFrame("Frame");
InventoryNotifier_EventFrame:RegisterEvent("UI_ERROR_MESSAGE");

InventoryNotifier_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
        local ErrorMsgCode, ErrorMsgText = ...;
        -- Check If Inventory is Full
        if ErrorMsgCode == 2 then
            if IsInGroup() then
                SendChatMessage("{circle} Full Inventory Notifier Addon: " .. 
                    options.FullInventoryNotifierSayMsg .. 
                    " {circle}", "SAY");
            end
        end
    end
);