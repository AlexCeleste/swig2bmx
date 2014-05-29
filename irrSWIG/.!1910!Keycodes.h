// Copyright (C) 2002-2012 Nikolaus Gebhardt
// This file is part of the "Irrlicht Engine".
// For conditions of distribution and use, see copyright notice in irrlicht.h

#ifndef __IRR_KEY_CODES_H_INCLUDED__
#define __IRR_KEY_CODES_H_INCLUDED__

namespace irr
{

	enum EKEY_CODE
	{
		KEY_LBUTTON          = 0x01,  // Left mouse button
		KEY_RBUTTON          = 0x02,  // Right mouse button
		KEY_CANCEL           = 0x03,  // Control-break processing
		KEY_MBUTTON          = 0x04,  // Middle mouse button (three-button mouse)
		KEY_XBUTTON1         = 0x05,  // Windows 2000/XP: X1 mouse button
		KEY_XBUTTON2         = 0x06,  // Windows 2000/XP: X2 mouse button
		KEY_BACK             = 0x08,  // BACKSPACE key
		KEY_TAB              = 0x09,  // TAB key
		KEY_CLEAR            = 0x0C,  // CLEAR key
		KEY_RETURN           = 0x0D,  // ENTER key
		KEY_SHIFT            = 0x10,  // SHIFT key
		KEY_CONTROL          = 0x11,  // CTRL key
		KEY_MENU             = 0x12,  // ALT key
		KEY_PAUSE            = 0x13,  // PAUSE key
		KEY_CAPITAL          = 0x14,  // CAPS LOCK key
		KEY_KANA             = 0x15,  // IME Kana mode
		KEY_HANGUEL          = 0x15,  // IME Hanguel mode (maintained for compatibility use KEY_HANGUL)
		KEY_HANGUL           = 0x15,  // IME Hangul mode
		KEY_JUNJA            = 0x17,  // IME Junja mode
		KEY_FINAL            = 0x18,  // IME final mode
		KEY_HANJA            = 0x19,  // IME Hanja mode
		KEY_KANJI            = 0x19,  // IME Kanji mode
		KEY_ESCAPE           = 0x1B,  // ESC key
		KEY_CONVERT          = 0x1C,  // IME convert
		KEY_NONCONVERT       = 0x1D,  // IME nonconvert
		KEY_ACCEPT           = 0x1E,  // IME accept
		KEY_MODECHANGE       = 0x1F,  // IME mode change request
		KEY_SPACE            = 0x20,  // SPACEBAR
		KEY_PRIOR            = 0x21,  // PAGE UP key
		KEY_NEXT             = 0x22,  // PAGE DOWN key
		KEY_END              = 0x23,  // END key
		KEY_HOME             = 0x24,  // HOME key
		KEY_LEFT             = 0x25,  // LEFT ARROW key
		KEY_UP               = 0x26,  // UP ARROW key
		KEY_RIGHT            = 0x27,  // RIGHT ARROW key
		KEY_DOWN             = 0x28,  // DOWN ARROW key
		KEY_SELECT           = 0x29,  // SELECT key
		KEY_PRINT            = 0x2A,  // PRINT key
		KEY_EXECUT           = 0x2B,  // EXECUTE key
		KEY_SNAPSHOT         = 0x2C,  // PRINT SCREEN key
		KEY_INSERT           = 0x2D,  // INS key
		KEY_DELETE           = 0x2E,  // DEL key
		KEY_HELP             = 0x2F,  // HELP key
		KEY_KEY_0            = 0x30,  // 0 key
		KEY_KEY_1            = 0x31,  // 1 key
		KEY_KEY_2            = 0x32,  // 2 key
		KEY_KEY_3            = 0x33,  // 3 key
		KEY_KEY_4            = 0x34,  // 4 key
		KEY_KEY_5            = 0x35,  // 5 key
		KEY_KEY_6            = 0x36,  // 6 key
		KEY_KEY_7            = 0x37,  // 7 key
		KEY_KEY_8            = 0x38,  // 8 key
		KEY_KEY_9            = 0x39,  // 9 key
		KEY_KEY_A            = 0x41,  // A key
		KEY_KEY_B            = 0x42,  // B key
		KEY_KEY_C            = 0x43,  // C key
		KEY_KEY_D            = 0x44,  // D key
		KEY_KEY_E            = 0x45,  // E key
		KEY_KEY_F            = 0x46,  // F key
		KEY_KEY_G            = 0x47,  // G key
		KEY_KEY_H            = 0x48,  // H key
		KEY_KEY_I            = 0x49,  // I key
		KEY_KEY_J            = 0x4A,  // J key
		KEY_KEY_K            = 0x4B,  // K key
		KEY_KEY_L            = 0x4C,  // L key
		KEY_KEY_M            = 0x4D,  // M key
		KEY_KEY_N            = 0x4E,  // N key
		KEY_KEY_O            = 0x4F,  // O key
		KEY_KEY_P            = 0x50,  // P key
		KEY_KEY_Q            = 0x51,  // Q key
		KEY_KEY_R            = 0x52,  // R key
		KEY_KEY_S            = 0x53,  // S key
		KEY_KEY_T            = 0x54,  // T key
		KEY_KEY_U            = 0x55,  // U key
		KEY_KEY_V            = 0x56,  // V key
		KEY_KEY_W            = 0x57,  // W key
		KEY_KEY_X            = 0x58,  // X key
		KEY_KEY_Y            = 0x59,  // Y key
		KEY_KEY_Z            = 0x5A,  // Z key
