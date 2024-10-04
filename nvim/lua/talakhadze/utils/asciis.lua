local A = {}

A.asciis = {
  {
    [[=================     ===============     ===============   ========  ========]],
    [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
    [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
    [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
    [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
    [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
    [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
    [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
    [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
    [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
    [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
    [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
    [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
    [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
    [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
    [[||.=='    _-'                                                     `' |  /==.||]],
    [[=='    _-'                        N E O V I M                         \/   `==]],
    [[\   _-'                                                                `-_   /]],
    [[ `''                                                                      ``' ]],
  },

  {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
  },

  {
    "9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP",
    " 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP",
    "  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'",
    "    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'",
    "        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~",
    "                        )b.  .dbo.dP'`v'`9b.odb.  .dX(",
    "                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.",
    "                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb",
    "                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb",
    "                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP",
    "                     `'      9XXXXXX(   )XXXXXXP      `'",
    "                              XXXX X.`v'.X XXXX",
    "                              XP^X'`b   d'`X^XX",
    "                              X. 9  `   '  P )X",
  },

  {
    "          ▀████▀▄▄              ▄█ ",
    "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
    "    ▄        █          ▀▀▀▀▄  ▄▀  ",
    "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
    "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
    "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
    "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
    "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
    "   █   █  █      ▄▄           ▄▀   ",
  },

  {
    "                         .^!^                                           .!~:                        ",
    "                    ^!JPB&B!.                                            !&&BPJ!:                   ",
    "                ^?P#@@@@@G.                   :       :                   !@@@@@&BY!:               ",
    "             ^JB@@@@@@@@@7                   .#~     ?P                   .&@@@@@@@@&G?:            ",
    "          .7G@@@@@@@@@@@@#!                  ?@#^   ~@@^                 .5@@@@@@@@@@@@@G7.         ",
    "        .?#@@@@@@@@@@@@@@@@BY!^.             B@@&BBB&@@Y              :~Y&@@@@@@@@@@@@@@@@#?.       ",
    "       !#@@@@@@@@@@@@@@@@@@@@@@#G5Y?!~^:..  !@@@@@@@@@@#.   ..::^!7J5B&@@@@@@@@@@@@@@@@@@@@@B!      ",
    "     .5@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&##B#@@@@@@@@@@@BBBB##&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y     ",
    "    :B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5    ",
    "   .B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@?   ",
    "   5@&#BGGPPPPPGGB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BGGPP5PPPGBB#&#.  ",
    "   ^:..           .^!YB@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&57^.            .:^.  ",
    "                       ~G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y.                      ",
    "                         P@@@#BGGGGB#@@@@@@@@@@@@@@@@@@@@@@@@@#BP5555PG#@@@P                        ",
    "                         :J!:.      .^!JG&@@@@@@@@@@@@@@@@#57^.        .:!5~                        ",
    "                                         :?G@@@@@@@@@@@@P!.                                         ",
    "                                            ~5@@@@@@@@5^                                            ",
    "                                              ^P@@@@G^                                              ",
    "                                                !#@?                                                ",
    "                                                 :^ ",
  },

  {
    '$$$$$$$$$$$$$$$$$L   .$$$$$$$$$$$$$$$u',
    '$$$$$$$$$$$$$$$$$$N.@$$$$$$$$$$$$$$$$ *',
    '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \'>.n=L',
    '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$RR$$$$ \'b"  9',
    '$$$$$$$$$$$$$$$$$$$$$$$$$$$R#"  .$$$$ @   .*',
    '$$$$$$$$$$$$$$$$$$$$$$$`   .e$$$$$$$P   e"',
    '$$$$$$$$$$$$$$$$$$$$R#    o$$$$$$$$P   @',
    '$$$$$$$$$$$$$$$$$$$P" .e> 4$" \'$$$$F  .F',
    '$$$$$$$$$$$$$$$$$R  .$$$& \'$   $$$$  .#>',
    '$$$$$$$$$$$$$$$$$b.o$$$$$  $N  "$$" .">',
    '$$$$$$$$$$$$$$$$$$$$$$$$$  $$N  "` .$ \'>',
    '$$$$$$$$$$$$$$ "$$$$$$$$R  $$$&    $$ \'>',
    '$$$$$$$$$$$$$$  E"$$P`9$E  $$$$   8$$ \'>',
    '$$$$$$$$$$$$$$  E  "  9$F  $$$$k .$$$ \'>',
    '$$$$$$$$$$$$$$  E     9$N  $$$$$$$$$$ \'>',
    '$$$$$$$$$$$$$$  E     9$$.u$$$$$$$$$$ \'>',
    '$$$$$$$$$$$$$$ o"     9$$$$$$$$$$$$$$ d',
    '**************#       ***************"'
  },

  {
    '    ,p,                                               db',
    '  dSBKE                                               dBb',
    ' dKORNE     ,Rb                                ,p,    dKB',
    ' KBBBKE   ,mRc\'                                dBE    dKKb',
    ' KORNKE ,KORN" KBKORNb                    ,&   dKBE,  dKKE',
    ' KORNKEKBKK"  KK""""KEb.       ,KORNKORNKORN   dKKKp, dKKEb',
    ' KORNKBBKE`   Bp,   `KKpp,    dKEE"""""KORNE  ;KORNKBp2KORN',
    ' KORNKORN`    `KBK,   HKED    "KKKPp,  ;KORN  dKORNKORNKORN,',
    ' KORNKORN      `KKBb  dKED      ""KORNKORNKE  KORNKORNKORNEb',
    ' "KORNKKBpp,    `KKBKORNEp      ,;PKBKORNKE-  KORN" `KORNKEp',
    ' `KORNEEKORNpp,   `""KKK"    ,;PPBKORNKORNE   p"`     `KORN',
    '  pKORNb `"KORNpp,         ,KORNKF"KHKORNKE            `dp`',
    '  dKORNP    `"KORNpp,    ,;KORN"`   HKORNEp     mRc',
    '   dKKP        `"KKF\'  ,KORN"`      HKORNE',
    '                     ,PKF"          7KORNp',
    '                    !K"`              `"'
  },

  {
    '                      :::!~!!!!!:.',
    '                  .xUHWH!! !!?M88WHX:.',
    '                .X*#M@$!!  !X!M$$$$$$WWx:.',
    '               :!!!!!!?H! :!$!$$$$$$$$$$8X:',
    '              !!~  ~:~!! :~!$!#$$$$$$$$$$8X:',
    '             :!~::!H!<   ~.U$X!?R$$$$$$$$MM!',
    '             ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!',
    '               !:~~~ .:!M"T#$$$$WX??#MRRMMM!',
    '               ~?WuxiW*`   `"#$$$$8!!!!??!!!',
    '             :X- M$$$$       `"`T#$T~!8$WUXU~',
    '            :%`  ~#$$$m:        ~!~ ?$$$$$$',
    '          :!`.-   ~T$$$$8xx.  .xWW- ~""##*"',
    '.....   -~~:<` !    ~?T#$$@@W@*?$$      /`',
    'W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :',
    '#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`',
    ':::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~',
    '.~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `',
    'Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!',
    '$R@i.~~ !     :   ~$$$$$B$$en:`',
    '?MXT@Wx.~    :     ~"##*$$$$M~'
  },
}

return A.asciis
