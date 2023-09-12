require('lib.moonloader')
local tag        = "{96c8a2}[ travkasystem ]{ffffff}: "
local encoding   = require('encoding')
encoding.default = "CP1251"
local samp       = require 'lib.samp.events'
local inicfg     = require 'inicfg'
local vkeys      = require 'vkeys'
local wm         = require 'windows.message'
local imgui      = require('mimgui')
u8               = encoding.UTF8
local file       = 'moonloader/autorecon.ini'
local config     = inicfg.load({autoreconSettings},file)
inicfg.save(config,file)


function ThemeLite()
    local style = imgui.GetStyle()
    local colors = style.Colors

    style.Alpha = 1;
    style.WindowPadding = imgui.ImVec2(8.00, 8.00);
    style.WindowRounding = 7;
    style.WindowBorderSize = 1;
    style.WindowMinSize = imgui.ImVec2(32.00, 32.00);
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5);
    style.ChildRounding = 0;
    style.ChildBorderSize = 1;
    style.PopupRounding = 0;
    style.PopupBorderSize = 1;
    style.FramePadding = imgui.ImVec2(4.00, 3.00);
    style.FrameRounding = 15;
    style.FrameBorderSize = 0;
    style.ItemSpacing = imgui.ImVec2(8.00, 4.00);
    style.ItemInnerSpacing = imgui.ImVec2(4.00, 4.00);
    style.IndentSpacing = 21;
    style.ScrollbarSize = 14;
    style.ScrollbarRounding = 9;
    style.GrabMinSize = 10;
    style.GrabRounding = 15;
    style.TabRounding = 4;
    style.ButtonTextAlign = imgui.ImVec2(0.50, 0.50);
    style.SelectableTextAlign = imgui.ImVec2(0.00, 0.00);

    colors[imgui.Col.Text] = imgui.ImVec4(0.00, 0.00, 0.00, 1.00);
    colors[imgui.Col.TextDisabled] = imgui.ImVec4(0.60, 0.60, 0.60, 1.00);
    colors[imgui.Col.WindowBg] = imgui.ImVec4(0.94, 0.94, 0.94, 1.00);
    colors[imgui.Col.ChildBg] = imgui.ImVec4(0.00, 0.00, 0.00, 0.00);
    colors[imgui.Col.PopupBg] = imgui.ImVec4(1.00, 1.00, 1.00, 0.98);
    colors[imgui.Col.Border] = imgui.ImVec4(0.00, 0.00, 0.00, 0.30);
    colors[imgui.Col.BorderShadow] = imgui.ImVec4(0.00, 0.00, 0.00, 0.00);
    colors[imgui.Col.FrameBg] = imgui.ImVec4(1.00, 1.00, 1.00, 1.00);
    colors[imgui.Col.FrameBgHovered] = imgui.ImVec4(0.26, 0.59, 0.98, 0.40);
    colors[imgui.Col.FrameBgActive] = imgui.ImVec4(0.26, 0.59, 0.98, 0.67);
    colors[imgui.Col.TitleBg] = imgui.ImVec4(0.96, 0.96, 0.96, 1.00);
    colors[imgui.Col.TitleBgActive] = imgui.ImVec4(255, 255, 255, 255);
    colors[imgui.Col.TitleBgCollapsed] = imgui.ImVec4(1.00, 1.00, 1.00, 0.51);
    colors[imgui.Col.MenuBarBg] = imgui.ImVec4(0.86, 0.86, 0.86, 1.00);
    colors[imgui.Col.ScrollbarBg] = imgui.ImVec4(0.98, 0.98, 0.98, 0.53);
    colors[imgui.Col.ScrollbarGrab] = imgui.ImVec4(0.69, 0.69, 0.69, 0.80);
    colors[imgui.Col.ScrollbarGrabHovered] = imgui.ImVec4(0.49, 0.49, 0.49, 0.80);
    colors[imgui.Col.ScrollbarGrabActive] = imgui.ImVec4(0.49, 0.49, 0.49, 1.00);
    colors[imgui.Col.CheckMark] = imgui.ImVec4(0.24, 1.00, 0.00, 1.00);
    colors[imgui.Col.SliderGrab] = imgui.ImVec4(0.24, 1.00, 0.00, 1.00);
    colors[imgui.Col.SliderGrabActive] = imgui.ImVec4(0.46, 0.54, 0.80, 0.60);
    colors[imgui.Col.Button] = imgui.ImVec4(0.24, 1.00, 0.00, 1.00);
    colors[imgui.Col.ButtonHovered] = imgui.ImVec4(0.26, 0.59, 0.98, 1.00);
    colors[imgui.Col.ButtonActive] = imgui.ImVec4(0.06, 0.53, 0.98, 1.00);
    colors[imgui.Col.Header] = imgui.ImVec4(0.26, 0.59, 0.98, 0.31);
    colors[imgui.Col.HeaderHovered] = imgui.ImVec4(0.26, 0.59, 0.98, 0.80);
    colors[imgui.Col.HeaderActive] = imgui.ImVec4(0.26, 0.59, 0.98, 1.00);
    colors[imgui.Col.Separator] = imgui.ImVec4(0.24, 1.00, 0.00, 1.00);
    colors[imgui.Col.SeparatorHovered] = imgui.ImVec4(0.14, 0.44, 0.80, 0.78);
    colors[imgui.Col.SeparatorActive] = imgui.ImVec4(0.14, 0.44, 0.80, 1.00);
    colors[imgui.Col.ResizeGrip] = imgui.ImVec4(0.80, 0.80, 0.80, 0.56);
    colors[imgui.Col.ResizeGripHovered] = imgui.ImVec4(0.26, 0.59, 0.98, 0.67);
    colors[imgui.Col.ResizeGripActive] = imgui.ImVec4(0.26, 0.59, 0.98, 0.95);
    colors[imgui.Col.Tab] = imgui.ImVec4(0.76, 0.80, 0.84, 0.93);
    colors[imgui.Col.TabHovered] = imgui.ImVec4(0.26, 0.59, 0.98, 0.80);
    colors[imgui.Col.TabActive] = imgui.ImVec4(0.60, 0.73, 0.88, 1.00);
    colors[imgui.Col.TabUnfocused] = imgui.ImVec4(0.92, 0.93, 0.94, 0.99);
    colors[imgui.Col.TabUnfocusedActive] = imgui.ImVec4(0.74, 0.82, 0.91, 1.00);
    colors[imgui.Col.PlotLines] = imgui.ImVec4(0.39, 0.39, 0.39, 1.00);
    colors[imgui.Col.PlotLinesHovered] = imgui.ImVec4(1.00, 0.43, 0.35, 1.00);
    colors[imgui.Col.PlotHistogram] = imgui.ImVec4(0.90, 0.70, 0.00, 1.00);
    colors[imgui.Col.PlotHistogramHovered] = imgui.ImVec4(1.00, 0.45, 0.00, 1.00);
    colors[imgui.Col.TextSelectedBg] = imgui.ImVec4(0.26, 0.59, 0.98, 0.35);
    colors[imgui.Col.DragDropTarget] = imgui.ImVec4(0.26, 0.59, 0.98, 0.95);
    colors[imgui.Col.NavHighlight] = imgui.ImVec4(0.26, 0.59, 0.98, 0.80);
    colors[imgui.Col.NavWindowingHighlight] = imgui.ImVec4(0.70, 0.70, 0.70, 0.70);
    colors[imgui.Col.NavWindowingDimBg] = imgui.ImVec4(0.20, 0.20, 0.20, 0.20);
    colors[imgui.Col.ModalWindowDimBg] = imgui.ImVec4(0.20, 0.20, 0.20, 0.35);
end

imgui.OnInitialize(function ()
    imgui.GetIO().IniFilename = nil
    ThemeLite()
end)

local window = imgui.new.bool(false)

function imgui.Hint(text)
    imgui.SameLine()
    imgui.TextDisabled("(?)")
    if imgui.IsItemHovered() then
        imgui.BeginTooltip()
        imgui.TextUnformatted(u8(text))
        imgui.EndTooltip()
    end
end

function imgui.CenterText(text)
    local width = imgui.GetWindowWidth()
    local calc = imgui.CalcTextSize(text)
    imgui.SetCursorPosX( width / 2 - calc.x / 2 )
    imgui.Text(text)
end

local warnings  = imgui.new.bool(config.autoreconSettings.warnings)
local autorecon = imgui.new.bool(config.autoreconSettings.autorecon)

local mainMenu = imgui.OnFrame(
    function() return window[0] end,
    function(this)local size, res = imgui.ImVec2(250,240), imgui.ImVec2(getScreenResolution())
        imgui.SetNextWindowPos(imgui.ImVec2(res.x / 2, res.y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        if imgui.Begin(u8'Авто рекон ', window, imgui.WindowFlags.NoResize + imgui.WindowFlags.AlwaysAutoResize + imgui.WindowFlags.NoCollapse) then
            imgui.Text(u8"Обработка варнингов")
            if imgui.Checkbox(u8'Замена варнингов', warnings) then
                sampAddChatMessage(tag .. '{ffffff}Замена варнингов: ' .. (warnings[0] and '{4be956}Включена' or '{ff0000}Выключена'), -1)
                config.autoreconSettings.warnings = not config.autoreconSettings.warnings
                inicfg.save(config, file)
            end
            imgui.Hint("OLD: <Warning> Player Nick[111]: Возможно cheat name (111 lvl)\nNEW: 111 LVL | Player Nick[111], cheat: cheat name (2 => /re 111) | при включенном авто реконе") --lvl,nick,id,cheat,autoreconText

            if imgui.Checkbox(u8'Авто рекон за варнингом', autorecon) then
                
                sampAddChatMessage(tag .. '{ffffff}Авто рекон: ' .. (autorecon[0] and '{4be956}Включен' or '{ff0000}Выключен'), -1)
                config.autoreconSettings.warnings = not config.autoreconSettings.warnings
                config.autoreconSettings.autorecon = not config.autoreconSettings.autorecon
                inicfg.save(config, file)
            end

            imgui.Hint("При нажатии на ( 2 ) вы войдете в рекон за последним варнингом")
            imgui.Separator()
            imgui.CenterText("created by travkacode")

        end
        imgui.End()
    end
)

local dev = "{6efa71}t{00eb8d}r{00daab}a{00c8c8}v{00b3e0}k{009ef0}a{0087f4}c{006deb}o{0050d3}d{222caf}e"

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(100) end
    sampAddChatMessage('[ travkasystem ]: {4be956}activated', 0x96c8a2)
    print("Скрипт успешно загружен!")
    print("Настройки скрипта: {4be956}/autorecon")
    print("created by "..dev)
    addEventHandler('onWindowMessage', function(msg, wparam)
        if msg == wm.WM_KEYDOWN or msg == wm.WM_SYSKEYDOWN then
            if wparam == vkeys.VK_2 then
                if not sampIsChatInputActive() and autorecon[0] == true then -- Проверка на открытый чат
                    sampSendChat('/re '..config.autoreconSettings.lastuserID)
                end

            end
        end
    end)

    sampRegisterChatCommand('autorecon', function ()
        window[0] = not window[0] -- Переключаем состояние рендера
    end)

    while true do
        wait(0)
    end
end

function samp.onServerMessage(color, text)
    if warnings[0] then
        if text:find("%<Warning%> (.+)%[(%d+)%]: Возможно (.+) %((%d+)") then
            local nick,id,cheat,lvl = text:match("%<Warning%> (.+)%[(%d+)%]: Возможно (.+) %((%d+)")
            config.autoreconSettings.lastuserID = id
            inicfg.save(config, file)
            local autoreconText = (autorecon[0] and ("{ffffff}( 2 => {ff7c00}/re %s{ffffff} )"):format(id) or " ")
            message = ("{ff7c00}%s {ffffff}LVL | {4be956}%s[%s]{ffffff}, cheat: {ff0000}%s %s"):format(lvl,nick,id,cheat,autoreconText)
            sampAddChatMessage(message, -1)
            return false
        end
    end
end
