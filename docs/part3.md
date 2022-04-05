---
title: Part3 - Where are the string tables?... OMG...
---

# Part3 - Where are the string tables?... OMG...

Prepare for a wild ride!

String tables. FFA contains a lot of text, many dialogs with NPCs, story related text. A lot of text. Comming from LADX, I expected a stringtable.
After all [LADX has multiple stringtables](https://github.com/zladx/LADX-Disassembly/tree/main/src/text).

But, looking at the rom with a hex editor, no [ascii](https://en.wikipedia.org/wiki/ASCII) to be found. Must be some custom encoding.

## Text encoding...

![image](https://user-images.githubusercontent.com/964186/161773944-930d9ea0-3f56-4166-9c88-dbddbca7d22f.png)
Looking at the BGB VRAM viewer (note: I love the BGB VRAM viewer. You should as well, it's great for understanding what games are doing under the hood)
We can see that there is some font loaded, and that it doesn't follow ascii ordering. What would be the odds of those tile numbers directly being
related to how the text is encoded....

Well, the odds are bad. But, not horrible, debugging the code that draws a single character, we spot an `add $80`.
So, trying an `$80` offset to the tile numbering in VRAM gives us... something. But not a lot.

We find a few bits and pieces in bank `$0D` and `$0E`, but it's pretty corrupt, best piece would be:
```asm
        db "<10><5b>AM<51>ARCIE.\n<5b>SEARCH RELICS.\nDR.BOWOW<51>AD<6d>ME.<12>"
        db "<1b><9d> LEFT<51><6d><9d>RE.\n<5b>WAITED 50 YEARS.\n<9d> FORGOT<51>E.<12>"
        db "<1b><5b>CAN<97>ELP YOU.\nTAK<6d>M<6d>WITH YOU.<12>"
```

So we are missing a piece of the puzzle. Could it be some kind of compression? It took me forever to find out. I spend a whole evening with the debugger, tracing code,
not understanding what was happening. Until...

It read two bytes from a piece of data at `00:3f1d`. And that's when it clicked. Some bytes have a meaning of two characters, and this table shows which two characters.

### Dual character mapping...

Life would have been good and easy. Except, it isn't. For some reason, the indexing into this table is split into two parts.
* Bytes: $20-$70 map to the first part of the table
* Bytes: $80-$A0 map to a second part of the table
To this day, I still have no idea why this split exists.

But, after this, we can write a [small script](https://github.com/daid/FFA-Disassembly/blob/master/tools/romAsText.py) that decodes the whole ROM as text.

At this point, it also became obvious that `$14` and `$15` get replaced with the player and girl names, and various other symbols and icons.

And the text becomes pretty obvious in bank $0D and $0E now:
```
0e:6120: <00><f9><10>qo<00><00><00><00><08>gh<00><71><f8><00>i.av<04><10><BOY> was a fighter\nof E
0e:6140: mpire Glaive.<00>.of<04><11><00>GD!<0f>Fo<BOY><00>C.eaj<04><10><BOY> and f
0e:6160: riends\nwere forced to\nfight everyday<12><1b>just for
0e:6180:  the\nentertainment of\nDark Lord.<12><1b><00><02>e.nt<02>e.<fa><00><04>
0e:61a0: Many fighters have\nfallen from their\nwounds.<12><11><00>D!
0e:61c0: <04>us<0a><0a><f8><17> c<fc>yo<fd><02>.omC.<1e><04><10><BOY>:__ Willy!\nWilly:
0e:61e0: <BOY>_<00>.ea<04>  Mana\n is in danger now_<12><1b><00><00><04> We must 
```

### There is trouble in the lands...

