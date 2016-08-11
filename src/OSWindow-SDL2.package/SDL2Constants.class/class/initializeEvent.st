class initialization
initializeEvent
    SDL_FIRSTEVENT := 0.
    SDL_QUIT           := 16r100.

    "iOS Events"
    SDL_APP_TERMINATING	:= SDL_QUIT + 1.
    SDL_APP_LOWMEMORY	:= SDL_QUIT + 2.
    SDL_APP_WILLENTERBACKGROUND	:= SDL_QUIT + 3.
    SDL_APP_DIDENTERBACKGROUND	:= SDL_QUIT + 4.
    SDL_APP_WILLENTERFOREGROUND	:= SDL_QUIT + 5.
    SDL_APP_DIDENTERFOREGROUND	:= SDL_QUIT + 6.
						
    "Window events"
    SDL_WINDOWEVENT := 16r200.
    SDL_SYSWMEVENT := SDL_WINDOWEVENT + 1.

    "Keyboard events"
    SDL_KEYDOWN  := 16r300.
    SDL_KEYUP			:= SDL_KEYDOWN + 1.
    SDL_TEXTEDITING	:= SDL_KEYDOWN + 2.
    SDL_TEXTINPUT		:= SDL_KEYDOWN + 3.

    "Mouse events"
    SDL_MOUSEMOTION    := 16r400.
    SDL_MOUSEBUTTONDOWN	:= SDL_MOUSEMOTION + 1.
    SDL_MOUSEBUTTONUP		:= SDL_MOUSEMOTION + 2.
    SDL_MOUSEWHEEL			:= SDL_MOUSEMOTION + 3.

    "Joystick events"
    SDL_JOYAXISMOTION  := 16r600.
    SDL_JOYBALLMOTION	:= SDL_JOYAXISMOTION + 1.
    SDL_JOYHATMOTION	:= SDL_JOYAXISMOTION + 2.
    SDL_JOYBUTTONDOWN	:= SDL_JOYAXISMOTION + 3.
    SDL_JOYBUTTONUP		:= SDL_JOYAXISMOTION + 4.
    SDL_JOYDEVICEADDED	:= SDL_JOYAXISMOTION + 5.
    SDL_JOYDEVICEREMOVED	:= SDL_JOYAXISMOTION + 6.

    "Game controller events"
    SDL_CONTROLLERAXISMOTION  := 16r650.
    SDL_CONTROLLERBUTTONDOWN	:= SDL_CONTROLLERAXISMOTION + 1.
    SDL_CONTROLLERBUTTONUP	 	:= SDL_CONTROLLERAXISMOTION + 2.
    SDL_CONTROLLERDEVICEADDED 	:= SDL_CONTROLLERAXISMOTION + 3.
    SDL_CONTROLLERDEVICEREMOVED	:= SDL_CONTROLLERAXISMOTION + 4.
    SDL_CONTROLLERDEVICEREMAPPED	:= SDL_CONTROLLERAXISMOTION + 5.

    "Touch events"
    SDL_FINGERDOWN	:= 16r700.
    SDL_FINGERUP		:= SDL_FINGERDOWN + 1.
    SDL_FINGERMOTION	:= SDL_FINGERDOWN + 2.

    "Gesture events"
    SDL_DOLLARGESTURE  := 16r800.
    SDL_DOLLARRECORD := SDL_DOLLARGESTURE + 1.
    SDL_MULTIGESTURE := SDL_DOLLARGESTURE + 2.

    "Clipboard events"
    SDL_CLIPBOARDUPDATE := 16r900.

    "Drag and drop events"
    SDL_DROPFILE        := 16r1000.

    "/** Events ::SDL_USEREVENT through ::SDL_LASTEVENT are for your use,
     *  and should be allocated with SDL_RegisterEvents()
     */"
    SDL_USEREVENT    := 16r8000.

    "/**
     *  This last event is only for bounding internal arrays
     */"
    SDL_LASTEVENT    := 16rFFFF