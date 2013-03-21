# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Uparrow - Because nothing says 'I agree' like an uparrow
#
# Author:
#   jamiethepiper

uparrow = [
  "↑",
  "ˆ",
  "^",
  "Ʌ",
  "Ѧ",
  "٨",
  "۩",
  "෴",
  "༈",
  "༒",
  "ᄉ",
  "ᄊ",
  "ᄴ",
  "ᅀ",
  "ᐃ",
  "ᐄ",
  "ᐞ",
  "ᐱ",
  "ᗋ",
  "ᗑ",
  "ᗗ",
  "⅄",
  "↟",
  "↥",
  "↺",
  "↻",
  "⇈",
  "⇑",
  "⇞",
  "⇡",
  "⇧",
  "⇪",
  "⇫",
  "⇬",
  "⇭",
  "⇮",
  "⇯",
  "∆",
  "⋀",
  "⋏",
  "⌂",
  "⍍",
  "⍏",
  "⍓",
  "⍐",
  "⍲",
  "⏏",
  "▲",
  "△",
  "▴",
  "▵",
  "◬",
  "◭",
  "◮",
  "☝",
  "☤",
  "☬",
  "♗",
  "⚨",
  "⛢"
]

module.exports = (robot) ->
  robot.hear /.*(uparrow).*/i, (msg) ->
    msg.send msg.random uparrow