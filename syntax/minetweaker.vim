" Language: Minetweaker

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword mtControl if else for in while as function return include import version
syn keyword mtNull null
syn keyword mtBool true false
syn keyword mtTypes val var bool byte short int long float double string
syn keyword mtItemKeys ore minecraft
syn keyword mtFunctions minetweaker recipes vanilla mods add addShaped addShapedMirrored addShapeless addAll addRecipe remove removeShaped removeShapeless mirror furnace setFuel print items withTag withDamage onlyWithTag onlyDamaged onlyDamageAtLeast onlyDamageAtMost onlyDamageBetween weight giveBack loot addChestLoot removeChestLoot seeds addSeed removeSeed displayName addTooltip addShiftTooltip game setLocalisation format min max

" Numbers
syn match mtNumber '\d\+'
syn match mtNumber '[-+]\d\+'

" Strings
syn region mtString start='"' skip='\\.' end='"'

" Blocks
syn region mtBlock matchgroup=mtParen start='{' end='}' fold transparent
syn region mtArray matchgroup=mtParen start='\[' end='\]' fold transparent

" Comments
syn keyword mtTodo contained TODO FIXME XXX

syn region mtComment start='#' end='$' contains=mtTodo
syn region mtComment start='//' end='$' contains=mtTodo
syn region mtComment start='/\*' end='\*/' contains=mtTodo

hi def link mtTodo Todo
hi def link mtComment Comment
hi def link mtControl Statement
hi def link mtNull Constant
hi def link mtBool Boolean
hi def link mtTypes Type
hi def link mtItemKeys Identifier
hi def link mtFunctions Keyword
hi def link mtNumber Number
hi def link mtString String

let b:current_syntax = "minetweaker"

