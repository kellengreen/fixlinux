function pressKey(key)
    return function ()
        hs.eventtap.keyStroke(nil, key, 0)
    end
end

function goFullScreen()
    local window = hs.window.focusedWindow()
    local frame = window:frame()
    local screen = window:screen():frame()
    frame.x = screen.x
    frame.y = screen.y
    frame.w = screen.w
    frame.h = screen.h
    window:setFrame(frame)
end

hs.hotkey.bind({'alt'}, 'delete', nil, pressKey('forwarddelete'), pressKey('forwarddelete'))
hs.hotkey.bind({'alt'}, '`', nil, pressKey('escape'), pressKey('escape'))
hs.hotkey.bind({'alt'}, 'f', goFullScreen)
