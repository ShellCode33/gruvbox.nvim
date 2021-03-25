-- language specific higlights
local lush = require("lush")
local base = require("gruvbox.base")
local styles = require("gruvbox.settings").styles

local langs = lush(function()
  return {
    -- mail.vim
    mailQuoted1 {base.GruvboxAqua},
    mailQuoted2 {base.GruvboxPurple},
    mailQuoted3 {base.GruvboxYellow},
    mailQuoted4 {base.GruvboxGreen},
    mailQuoted5 {base.GruvboxRed},
    mailQuoted6 {base.GruvboxOrange},
    mailSignature {base.Comment},
    -- -- golang
    goDirective {base.GruvboxAqua},
    goConstants {base.GruvboxPurple},
    goDeclaration {base.GruvboxRed},
    goDeclType {base.GruvboxBlue},
    goBuiltins {base.GruvboxOrange},
    -- java
    javaAnnotation {base.GruvboxBlue},
    javaDocTags {base.GruvboxAqua},
    javaCommentTitle {base.Comment},
    javaParen {base.GruvboxFg3},
    javaParen1 {base.GruvboxFg3},
    javaParen2 {base.GruvboxFg3},
    javaParen3 {base.GruvboxFg3},
    javaParen4 {base.GruvboxFg3},
    javaParen5 {base.GruvboxFg3},
    javaOperator {base.GruvboxOrange},
    -- xml
    xmlTag {base.GruvboxAquaBold},
    xmlEndTag {base.GruvboxAquaBold},
    xmlTagName {base.GruvboxBlue},
    xmlEqual {base.GruvboxBlue},
    docbkKeyword {base.GruvboxAquaBold},
    xmlDocTypeDecl {base.GruvboxGray},
    xmlDocTypeKeyword {base.GruvboxPurple},
    xmlCdataStart {base.GruvboxGray},
    xmlCdataCdata {base.GruvboxPurple},
    dtdFunction {base.GruvboxGray},
    dtdTagName {base.GruvboxPurple},
    xmlAttrib {base.GruvboxOrange},
    xmlProcessingDelim {base.GruvboxGray},
    dtdParamEntityPunct {base.GruvboxGray},
    dtdParamEntityDPunct {base.GruvboxGray},
    xmlAttribPunct {base.GruvboxGray},
    xmlEntity {base.GruvboxRed},
    xmlEntityPunct {base.GruvboxRed},
    -- -- viml
    vimNotation {base.GruvboxOrange},
    vimBracket {base.GruvboxOrange},
    vimMapModKey {base.GruvboxOrange},
    vimFuncSID {base.GruvboxFg3},
    vimSetSep {base.GruvboxFg3},
    vimSep {base.GruvboxFg3},
    vimContinue {base.GruvboxFg3},
    -- c
    cOperator {base.GruvboxPurple},
    cppOperator {base.GruvboxPurple},
    cStructure {base.GruvboxOrange},
    -- python
    pythonBuiltin {base.GruvboxOrange},
    pythonBuiltinObj {base.GruvboxOrange},
    pythonBuiltinFunc {base.GruvboxOrange},
    pythonFunction {base.GruvboxAqua},
    pythonDecorator {base.GruvboxRed},
    pythonInclude {base.GruvboxBlue},
    pythonImport {base.GruvboxBlue},
    pythonRun {base.GruvboxBlue},
    pythonCoding {base.GruvboxBlue},
    pythonOperator {base.GruvboxRed},
    pythonException {base.GruvboxRed},
    pythonExceptions {base.GruvboxPurple},
    pythonBoolean {base.GruvboxPurple},
    pythonDot {base.GruvboxFg3},
    pythonConditional {base.GruvboxRed},
    pythonRepeat {base.GruvboxRed},
    pythonDottedName {base.GruvboxGreenBold},
    -- clojure
    clojureKeyword {base.GruvboxBlue},
    clojureCond {base.GruvboxOrange},
    clojureSpecial {base.GruvboxOrange},
    clojureDefine {base.GruvboxOrange},
    clojureFunc {base.GruvboxYellow},
    clojureRepeat {base.GruvboxYellow},
    clojureCharacter {base.GruvboxAqua},
    clojureStringEscape {base.GruvboxAqua},
    clojureException {base.GruvboxRed},
    clojureRegexp {base.GruvboxAqua},
    clojureRegexpEscape {base.GruvboxAqua},
    clojureParen {base.GruvboxFg3},
    clojureAnonArg {base.GruvboxYellow},
    clojureVariable {base.GruvboxBlue},
    clojureMacro {base.GruvboxOrange},
    clojureMeta {base.GruvboxYellow},
    clojureDeref {base.GruvboxYellow},
    clojureQuote {base.GruvboxYellow},
    clojureUnquote {base.GruvboxYellow},
    clojureRegexpCharClass {fg = base.GruvboxFg3.fg.hex, gui = styles.bold},
    clojureRegexpMod {clojureRegexpCharClass},
    clojureRegexpQuantifier {clojureRegexpCharClass},
    -- html
    htmlTag {base.GruvboxAquaBold},
    htmlEndTag {base.GruvboxAquaBold},
    htmlTagName {base.GruvboxBlue},
    htmlArg {base.GruvboxOrange},
    htmlScriptTag {base.GruvboxPurple},
    htmlTagN {base.GruvboxFg1},
    htmlSpecialTagName {base.GruvboxBlue},
    htmlSpecialChar {base.GruvboxRed},
    htmlLink {fg = base.GruvboxFg4.fg.hex, gui = styles.underline},
    htmlBold {fg = base.GruvboxFg1.fg.hex, gui = styles.bold},
    htmlBoldUnderline {
      fg = base.GruvboxFg1.fg.hex,
      gui = styles.bold .. "," .. styles.underline,
    },
    htmlBoldItalic {
      fg = base.GruvboxFg1.fg.hex,
      gui = styles.bold .. "," .. styles.italic_strings,
    },
    htmlBoldUnderlineItalic {
      fg = base.GruvboxFg1.fg.hex,
      gui = styles.bold .. "," .. styles.underline .. "," .. styles.italic_strings,
    },
    htmlItalic {fg = base.GruvboxFg1.fg.hex, gui = styles.italic_strings},
    -- special diffs
    diffAdded {base.GruvboxGreen},
    diffRemoved {base.GruvboxRed},
    diffChanged {base.GruvboxAqua},
    diffFile {base.GruvboxOrange},
    diffNewFile {base.GruvboxYellow},
    diffLine {base.GruvboxBlue},
    -- css
    cssBraces {base.GruvboxBlue},
    cssFunctionName {base.GruvboxYellow},
    cssIdentifier {base.GruvboxOrange},
    cssClassName {base.GruvboxGreen},
    cssColor {base.GruvboxBlue},
    cssSelectorOp {base.GruvboxBlue},
    cssSelectorOp2 {base.GruvboxBlue},
    cssImportant {base.GruvboxGreen},
    cssVendor {base.GruvboxFg1},
    cssTextProp {base.GruvboxAqua},
    cssAnimationProp {base.GruvboxAqua},
    cssUIProp {base.GruvboxYellow},
    cssTransformProp {base.GruvboxAqua},
    cssTransitionProp {base.GruvboxAqua},
    cssPrintProp {base.GruvboxAqua},
    cssPositioningProp {base.GruvboxYellow},
    cssBoxProp {base.GruvboxAqua},
    cssFontDescriptorProp {base.GruvboxAqua},
    cssFlexibleBoxProp {base.GruvboxAqua},
    cssBorderOutlineProp {base.GruvboxAqua},
    cssBackgroundProp {base.GruvboxAqua},
    cssMarginProp {base.GruvboxAqua},
    cssListProp {base.GruvboxAqua},
    cssTableProp {base.GruvboxAqua},
    cssFontProp {base.GruvboxAqua},
    cssPaddingProp {base.GruvboxAqua},
    cssDimensionProp {base.GruvboxAqua},
    cssRenderProp {base.GruvboxAqua},
    cssColorProp {base.GruvboxAqua},
    cssGeneratedContentProp {base.GruvboxAqua},
    -- js
    javaScriptBraces {base.GruvboxFg1},
    javaScriptFunction {base.GruvboxAqua},
    javaScriptIdentifier {base.GruvboxRed},
    javaScriptMember {base.GruvboxBlue},
    javaScriptNumber {base.GruvboxPurple},
    javaScriptNull {base.GruvboxPurple},
    javaScriptParens {base.GruvboxFg3},
    javascriptImport {base.GruvboxAqua},
    javascriptExport {base.GruvboxAqua},
    javascriptClassKeyword {base.GruvboxAqua},
    javascriptClassExtends {base.GruvboxAqua},
    javascriptDefault {base.GruvboxAqua},
    javascriptClassName {base.GruvboxYellow},
    javascriptClassSuperName {base.GruvboxYellow},
    javascriptGlobal {base.GruvboxYellow},
    javascriptEndColons {base.GruvboxFg1},
    javascriptFuncArg {base.GruvboxFg1},
    javascriptGlobalMethod {base.GruvboxFg1},
    javascriptNodeGlobal {base.GruvboxFg1},
    javascriptBOMWindowProp {base.GruvboxFg1},
    javascriptArrayMethod {base.GruvboxFg1},
    javascriptArrayStaticMethod {base.GruvboxFg1},
    javascriptCacheMethod {base.GruvboxFg1},
    javascriptDateMethod {base.GruvboxFg1},
    javascriptMathStaticMethod {base.GruvboxFg1},
    javascriptProp {base.GruvboxFg1},
    javascriptURLUtilsProp {base.GruvboxFg1},
    javascriptBOMNavigatorProp {base.GruvboxFg1},
    javascriptDOMDocMethod {base.GruvboxFg1},
    javascriptDOMDocProp {base.GruvboxFg1},
    javascriptBOMLocationMethod {base.GruvboxFg1},
    javascriptBOMWindowMethod {base.GruvboxFg1},
    javascriptStringMethod {base.GruvboxFg1},
    javascriptVariable {base.GruvboxOrange},
    javascriptClassSuper {base.GruvboxOrange},
    javascriptFuncKeyword {base.GruvboxAqua},
    javascriptAsyncFunc {base.GruvboxAqua},
    javascriptClassStatic {base.GruvboxOrange},
    javascriptOperator {base.GruvboxRed},
    javascriptForOperator {base.GruvboxRed},
    javascriptYield {base.GruvboxRed},
    javascriptExceptions {base.GruvboxRed},
    javascriptMessage {base.GruvboxRed},
    javascriptTemplateSB {base.GruvboxAqua},
    javascriptTemplateSubstitution {base.GruvboxFg1},
    javascriptLabel {base.GruvboxFg1},
    javascriptObjectLabel {base.GruvboxFg1},
    javascriptPropertyName {base.GruvboxFg1},
    javascriptLogicSymbols {base.GruvboxFg1},
    javascriptArrowFunc {base.GruvboxYellow},
    javascriptDocParamName {base.GruvboxFg4},
    javascriptDocTags {base.GruvboxFg4},
    javascriptDocNotation {base.GruvboxFg4},
    javascriptDocParamType {base.GruvboxFg4},
    javascriptDocNamedParamType {base.GruvboxFg4},
    javascriptBrackets {base.GruvboxFg1},
    javascriptDOMElemAttrs {base.GruvboxFg1},
    javascriptDOMEventMethod {base.GruvboxFg1},
    javascriptDOMNodeMethod {base.GruvboxFg1},
    javascriptDOMStorageMethod {base.GruvboxFg1},
    javascriptHeadersMethod {base.GruvboxFg1},
    javascriptAsyncFuncKeyword {base.GruvboxRed},
    javascriptAwaitFuncKeyword {base.GruvboxRed},
    jsClassKeyword {base.GruvboxAqua},
    jsExtendsKeyword {base.GruvboxAqua},
    jsExportDefault {base.GruvboxAqua},
    jsTemplateBraces {base.GruvboxAqua},
    jsGlobalNodeObjects {base.GruvboxBlue},
    jsGlobalObjects {base.GruvboxBlue},
    jsObjectKey {base.GruvboxGreenBold},
    jsFunction {base.GruvboxAqua},
    jsFuncCall {base.GruvboxBlue},
    jsFuncParens {base.GruvboxFg3},
    jsParens {base.GruvboxFg3},
    jsNull {base.GruvboxPurple},
    jsUndefined {base.GruvboxPurple},
    jsClassDefinition {base.GruvboxYellow},
    jsOperatorKeyword {base.GruvboxRed},
    -- typescript
    typescriptReserved {base.GruvboxAqua},
    typescriptLabel {base.GruvboxAqua},
    typescriptFuncKeyword {base.GruvboxAqua},
    typescriptIdentifier {base.GruvboxOrange},
    typescriptBraces {base.GruvboxOrange},
    typescriptEndColons {base.GruvboxFg1},
    typescriptDOMObjects {base.GruvboxFg1},
    typescriptAjaxMethods {base.GruvboxFg1},
    typescriptLogicSymbols {base.GruvboxOrange},
    typescriptDocSeeTag {base.Comment},
    typescriptDocParam {base.Comment},
    typescriptDocTags {base.Comment},
    typescriptGlobalObjects {base.GruvboxFg1},
    typescriptParens {base.GruvboxOrange},
    typescriptOpSymbols {base.GruvboxOrange},
    typescriptHtmlElemProperties {base.GruvboxFg1},
    typescriptNull {base.GruvboxPurple},
    typescriptInterpolationDelimiter {base.GruvboxAqua},
    typescriptArrowFunc {base.GruvboxFg1},
    typescriptCharacter {base.GruvboxOrange},
    typescriptUnion {base.GruvboxOrange},
    typescriptDotNotation {base.GruvboxOrange},
    typescriptGlobalObjectDot {typescriptDotNotation},
    -- -- jsx
    jsxTagName {base.GruvboxAqua},
    jsxComponentName {base.GruvboxGreen},
    jsxCloseString {base.GruvboxFg4},
    jsxAttrib {base.GruvboxYellow},
    jsxEqual {base.GruvboxAqua},
    -- purescript
    purescriptModuleKeyword {base.GruvboxAqua},
    purescriptModuleName {base.GruvboxFg1},
    purescriptWhere {base.GruvboxAqua},
    purescriptDelimiter {base.GruvboxFg4},
    purescriptType {base.GruvboxFg1},
    purescriptImportKeyword {base.GruvboxAqua},
    purescriptHidingKeyword {base.GruvboxAqua},
    purescriptAsKeyword {base.GruvboxAqua},
    purescriptStructure {base.GruvboxAqua},
    purescriptOperator {base.GruvboxBlue},
    purescriptTypeVar {base.GruvboxFg1},
    purescriptConstructor {base.GruvboxFg1},
    purescriptFunction {base.GruvboxFg1},
    purescriptConditional {base.GruvboxOrange},
    purescriptBacktick {base.GruvboxOrange},
    -- coffeescript
    coffeeExtendedOp {base.GruvboxFg3},
    coffeeSpecialOp {base.GruvboxFg3},
    coffeeCurly {base.GruvboxOrange},
    coffeeParen {base.GruvboxFg3},
    coffeeBracket {base.GruvboxOrange},
    -- ruby
    rubyStringDelimiter {base.GruvboxGreen},
    rubyInterpolationDelimiter {base.GruvboxAqua},
    -- obj-c
    objcTypeModifier {base.GruvboxRed},
    objcDirective {base.GruvboxBlue},
    -- moonscript
    moonSpecialOp {base.GruvboxFg3},
    moonExtendedOp {base.GruvboxFg3},
    moonFunction {base.GruvboxFg3},
    moonObject {base.GruvboxYellow},
    -- elixir
    elixirDocString {base.Comment},
    elixirStringDelimiter {base.GruvboxGreen},
    elixirInterpolationDelimiter {base.GruvboxAqua},
    elixirModuleDeclaration {base.GruvboxYellow},
    -- scala
    scalaNameDefinition {base.GruvboxFg1},
    scalaCaseFollowing {base.GruvboxFg1},
    scalaCapitalWord {base.GruvboxFg1},
    scalaTypeExtension {base.GruvboxFg1},
    scalaKeyword {base.GruvboxRed},
    scalaKeywordModifier {base.GruvboxRed},
    scalaSpecial {base.GruvboxAqua},
    scalaOperator {base.GruvboxFg1},
    scalaTypeDeclaration {base.GruvboxYellow},
    scalaTypeTypePostDeclaration {base.GruvboxYellow},
    scalaInstanceDeclaration {base.GruvboxFg1},
    scalaInterpolation {base.GruvboxAqua},
    -- markdown
    markdownItalic {fg = base.GruvboxFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {base.GruvboxGreenBold},
    markdownH2 {markdownH1},
    markdownH3 {base.GruvboxYellowBold},
    markdownH4 {markdownH3},
    markdownH5 {base.GruvboxYellow},
    markdownH6 {markdownH5},
    markdownCode {base.GruvboxAqua},
    markdownCodeBlock {base.GruvboxAqua},
    markdownCodeDelimiter {base.GruvboxAqua},
    markdownBlockquote {base.GruvboxGray},
    markdownListMarker {base.GruvboxGray},
    markdownOrderedListMarker {base.GruvboxGray},
    markdownRule {base.GruvboxGray},
    markdownHeadingRule {base.GruvboxGray},
    markdownUrlDelimiter {base.GruvboxFg3},
    markdownLinkDelimiter {base.GruvboxFg3},
    markdownLinkTextDelimiter {base.GruvboxFg3},
    markdownHeadingDelimiter {base.GruvboxOrange},
    markdownUrl {base.GruvboxPurple},
    markdownUrlTitleDelimiter {base.GruvboxGreen},
    markdownLinkText {fg = base.GruvboxGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
    -- haskell
    haskellType {base.GruvboxBlue},
    haskellIdentifier {base.GruvboxAqua},
    haskellSeparator {base.GruvboxFg4},
    haskellDelimiter {base.GruvboxOrange},
    haskellOperators {base.GruvboxPurple},
    haskellBacktick {base.GruvboxOrange},
    haskellStatement {base.GruvboxPurple},
    haskellConditional {base.GruvboxPurple},
    haskellLet {base.GruvboxRed},
    haskellDefault {base.GruvboxRed},
    haskellWhere {base.GruvboxRed},
    haskellBottom {base.GruvboxRedBold},
    haskellImportKeywords {base.GruvboxPurpleBold},
    haskellDeclKeyword {base.GruvboxOrange},
    haskellDecl {base.GruvboxOrange},
    haskellDeriving {base.GruvboxPurple},
    haskellAssocType {base.GruvboxAqua},
    haskellNumber {base.GruvboxAqua},
    haskellPragma {base.GruvboxRedBold},
    haskellTH {base.GruvboxAquaBold},
    haskellForeignKeywords {base.GruvboxGreen},
    haskellKeyword {base.GruvboxRed},
    haskellFloat {base.GruvboxAqua},
    haskellInfix {base.GruvboxPurple},
    haskellQuote {base.GruvboxGreenBold},
    haskellShebang {base.GruvboxYellowBold},
    haskellLiquid {base.GruvboxPurpleBold},
    haskellQuasiQuoted {base.GruvboxBlueBold},
    haskellRecursiveDo {base.GruvboxPurple},
    haskellQuotedType {base.GruvboxRed},
    haskellPreProc {base.GruvboxFg4},
    haskellTypeRoles {base.GruvboxRedBold},
    haskellTypeForall {base.GruvboxRed},
    haskellPatternKeyword {base.GruvboxBlue},
    -- json
    jsonKeyword {base.GruvboxGreen},
    jsonQuote {base.GruvboxGreen},
    jsonBraces {base.GruvboxFg1},
    jsonString {base.GruvboxFg1},
    -- csharp
    csBraces {base.GruvboxFg1},
    csEndColon {base.GruvboxFg1},
    csLogicSymbols {base.GruvboxFg1},
    csParens {base.GruvboxFg3},
    csOpSymbols {base.GruvboxFg3},
    csInterpolationDelimiter {base.GruvboxFg3},
    csInterpolationAlignDel {base.GruvboxAquaBold},
    csInterpolationFormat {base.GruvboxAqua},
    csInterpolationFormatDel {base.GruvboxAquaBold},
    -- rust
    rustSigil {base.GruvboxOrange},
    rustEscape {base.GruvboxAqua},
    rustStringContinuation {base.GruvboxAqua},
    rustEnum {base.GruvboxAqua},
    rustStructure {base.GruvboxAqua},
    rustModPathSep {base.GruvboxFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {base.GruvboxAqua},
    -- ocaml
    ocamlOperator {base.GruvboxFg1},
    ocamlKeyChar {base.GruvboxOrange},
    ocamlArrow {base.GruvboxOrange},
    ocamlInfixOpKeyword {base.GruvboxRed},
    ocamlConstructor {base.GruvboxOrange},
    -- lua
    luaIn {base.GruvboxRed},
    luaFunction {base.GruvboxAqua},
    luaTable {base.GruvboxOrange},
    -- signature
    SignatureMarkText {base.GruvboxBlueSign},
    SignatureMarkerText {base.GruvboxPurpleSign},
    -- gitcommit
    gitcommitSelectedFile {base.GruvboxGreen},
    gitcommitDiscardedFile {base.GruvboxRed},
  }
end)

return langs