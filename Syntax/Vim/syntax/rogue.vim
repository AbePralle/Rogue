" Vim syntax file
" Language:     Rogue
" Maintainer:   Abe Pralle <Abe.Pralle@plasmaworks.com>
" URL:    
" Last Change:  2010.06.03

" Windows: place in c:\Program Files\vim\vimfiles\syntax\
" MacVim:  place in ~/.vim/syntax/

" Quit when a syntax file was already loaded
if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  " we define it here so that included files can test for it
  let main_syntax='rogue'
endif

" keyword definitions
syn keyword rogueClassDecl   class endClass aspect endAspect compound endCompound enumeration endEnumeration
syn keyword rogueClassDecl   delegate endDelegate function endFunction primitive endPrimitive
syn keyword rogueClassDecl   with endWith
syn keyword rogueClassDecl   augment endAugment framework endFramework
syn keyword rogueMember      ENUMERATE DEFINITIONS SETTINGS CATEGORIES
syn keyword rogueMember      PROPERTIES METHODS ROUTINES
syn match   rogueError       "\<for\(\s\|(\)"
syn keyword rogueConditional  if elseIf else endIf
syn keyword rogueConditional  which whichIs case caseNext others endWhich endWhichIs
syn keyword rogueConditional  contingent endContingent satisfied unsatisfied
syn keyword rogueConditional  try catch endTry
syn keyword rogueConditional  block endBlock
syn keyword rogueLoop         await
syn keyword rogueLoop         while endWhile forEach endForEach in of step
syn keyword rogueLoop         loop endLoop
syn keyword rogueBranch       escapeForEach escapeWhile escapeLoop
syn keyword rogueBranch       escapeTry
syn keyword rogueBranch       escapeWhich escapeWhichIs escapeIf escapeContingent escapeBlock
syn keyword rogueBranch       nextIteration
syn keyword rogueBoolean      true false
syn keyword rogueConstant     null void gt lt eq infinity NaN
syn keyword rogueTypedef      this prior
syn keyword rogueStatement    return necessary sufficient noAction
syn keyword rogueStatement    yield yieldAndWait yieldWhile withTimeout
syn keyword rogueSpecial      insertUnderlying
syn keyword rogueType         Integer Byte Character Real Logical null String
syn keyword rogueStorageClass overlaying underlying
syn keyword rogueScopeDecl    readOnly writeOnly public private limited const local 
syn keyword rogueScopeDecl    deferred singleton managed
syn keyword rogueStorageClass native macro requisite abstract final propagated functional dynamicAccess
syn keyword rogueStorageClass marshalling omit
syn keyword rogueExceptions   throw try catch finally
syn keyword roguePreProc      useFramework
"syn match  roguegPreProc      "^\[.*]"
syn region  roguePreProc      start="\$\[" end="[\n\]]"
syn match   rogueNumber       "\<\d\+\(\.\d\+\)\=\>"
syn match   rogueNumber       "\<0b[01]\+\(\.[01]\+\)\=\>"
syn match   rogueNumber       "\<0x\x\+\(\.\x\+\)\=\>"

"syn match   rogueIdentifier  "\h\w*"
"syn match   rogueUserLabelRef  ".\k\+"

syn keyword rogueStatement    require ensure assert
syn keyword rogueOperator     and or xor not
syn keyword rogueOperator     instanceOf is isNot notInstanceOf duplicate
"syn match   rogueOperator     "\.\.\<"
"syn match   rogueOperator     "\.\.\>"
"syn match   rogueOperator     "\.\."
"syn keyword rogueOperator     == != <= >= 
"syn keyword rogueOperator     + - * / = ^ %
"syn match   rogueOperator    "+"
"syn match   rogueOperator    "-"
"syn match   rogueOperator    "\*"
"syn match   rogueOperator    "/"
"syn match   rogueOperator    "="
"syn match   rogueOperator    "^"
"syn match   rogueOperator    "%"
"syn match   rogueType    ":"
"syn match   rogueType    ";"
"syn match   rogueOperator     "<[^<]"me=e-1
"syn match   rogueOperator     ">[^>]"me=e-1

syn keyword rogueFuncDef  method routine task

syn match   rogueLineComment  "#.*" 
syn region  rogueLineComment  start="#{" end="}#"
syn region  rogueString       start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region  rogueString       start=+''+ end=+''+
syn match   rogueString       "'.'"
syn match   rogueString       "'\\.'"

hi def link rogueIdentifier  Identifier
hi def link rogueFuncDef        Function
hi def link rogueMember      Special
hi def link rogueVarArg         Function
hi def link rogueBraces      Function
hi def link rogueBranch      Conditional
hi def link rogueUserLabelRef    rogueUserLabel
hi def link rogueLabel      Label
hi def link rogueUserLabel    Label
hi def link rogueConditional    Conditional
hi def link rogueLoop      Repeat
hi def link rogueExceptions    Exception
hi def link rogueStorageClass    StorageClass
hi def link rogueMethodDecl    rogueStorageClass
hi def link rogueClassDecl    rogueStorageClass
hi def link rogueScopeDecl    rogueStorageClass
hi def link rogueBoolean    Boolean
hi def link rogueSpecial    Special
hi def link rogueSpecialError    Error
hi def link rogueSpecialCharError  Error
hi def link rogueString      String
hi def link rogueCharacter    Character
hi def link rogueSpecialChar    SpecialChar
hi def link rogueNumber      Number
hi def link rogueError      Error
hi def link rogueStringError    Error
hi def link rogueStatement    Statement
"hi def link rogueOperator    Operator
hi def link rogueComment    Comment
hi def link rogueDocComment    Comment
hi def link rogueLineComment    Comment
hi def link rogueConstant    Constant
hi def link rogueTypedef    Typedef
hi def link rogueTodo      Todo
hi def link roguePreProc                PreProc

hi def link rogueCommentTitle    SpecialComment
hi def link rogueDocTags    Special
hi def link rogueDocParam    Function
hi def link rogueDocSeeTagParam    Function
hi def link rogueCommentStar    rogueComment

hi def link rogueType      Type
hi def link rogueExternal    Include

hi def link htmlComment    Special
hi def link htmlCommentPart    Special
hi def link rogueSpaceError    Error

let b:current_syntax = "rogue"

if main_syntax == 'rogue'
  unlet main_syntax
endif

let b:spell_options="contained"

syn sync fromstart

