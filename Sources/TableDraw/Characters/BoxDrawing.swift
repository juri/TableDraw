extension Character {
    public enum boxDraw {
        /// Unicode box drawing character `─`
        public static let lightHorizontal: Character = "─"
        /// Unicode box drawing character `━`
        public static let heavyHorizontal: Character = "━"
        /// Unicode box drawing character `│`
        public static let lightVertical: Character = "│"
        /// Unicode box drawing character `┃`
        public static let heavyVertical: Character = "┃"
        /// Unicode box drawing character `┄`
        public static let lightTripleDashHorizontal: Character = "┄"
        /// Unicode box drawing character `┅`
        public static let heavyTripleDashHorizontal: Character = "┅"
        /// Unicode box drawing character `┆`
        public static let lightTripleDashVertical: Character = "┆"
        /// Unicode box drawing character `┇`
        public static let heavyTripleDashVertical: Character = "┇"
        /// Unicode box drawing character `┈`
        public static let lightQuadrupleDashHorizontal: Character = "┈"
        /// Unicode box drawing character `┉`
        public static let heavyQuadrupleDashHorizontal: Character = "┉"
        /// Unicode box drawing character `┊`
        public static let lightQuadrupleDashVertical: Character = "┊"
        /// Unicode box drawing character `┋`
        public static let heavyQuadrupleDashVertical: Character = "┋"
        /// Unicode box drawing character `┌`
        public static let lightDownAndRight: Character = "┌"
        /// Unicode box drawing character `┍`
        public static let downLightAndRightHeavy: Character = "┍"
        /// Unicode box drawing character `┎`
        public static let downHeavyAndRightLight: Character = "┎"
        /// Unicode box drawing character `┏`
        public static let heavyDownAndRight: Character = "┏"
        /// Unicode box drawing character `┐`
        public static let lightDownAndLeft: Character = "┐"
        /// Unicode box drawing character `┑`
        public static let downLightAndLeftHeavy: Character = "┑"
        /// Unicode box drawing character `┒`
        public static let downHeavyAndLeftLight: Character = "┒"
        /// Unicode box drawing character `┓`
        public static let heavyDownAndLeft: Character = "┓"
        /// Unicode box drawing character `└`
        public static let lightUpAndRight: Character = "└"
        /// Unicode box drawing character `┕`
        public static let upLightAndRightHeavy: Character = "┕"
        /// Unicode box drawing character `┖`
        public static let upHeavyAndRightLight: Character = "┖"
        /// Unicode box drawing character `┗`
        public static let heavyUpAndRight: Character = "┗"
        /// Unicode box drawing character `┘`
        public static let lightUpAndLeft: Character = "┘"
        /// Unicode box drawing character `┙`
        public static let upLightAndLeftHeavy: Character = "┙"
        /// Unicode box drawing character `┚`
        public static let upHeavyAndLeftLight: Character = "┚"
        /// Unicode box drawing character `┛`
        public static let heavyUpAndLeft: Character = "┛"
        /// Unicode box drawing character `├`
        public static let lightVerticalAndRight: Character = "├"
        /// Unicode box drawing character `┝`
        public static let verticalLightAndRightHeavy: Character = "┝"
        /// Unicode box drawing character `┞`
        public static let upHeavyAndRightDownLight: Character = "┞"
        /// Unicode box drawing character `┟`
        public static let downHeavyAndRightUpLight: Character = "┟"
        /// Unicode box drawing character `┠`
        public static let verticalHeavyAndRightLight: Character = "┠"
        /// Unicode box drawing character `┡`
        public static let downLightAndRightUpHeavy: Character = "┡"
        /// Unicode box drawing character `┢`
        public static let upLightAndRightDownHeavy: Character = "┢"
        /// Unicode box drawing character `┣`
        public static let heavyVerticalAndRight: Character = "┣"
        /// Unicode box drawing character `┤`
        public static let lightVerticalAndLeft: Character = "┤"
        /// Unicode box drawing character `┥`
        public static let verticalLightAndLeftHeavy: Character = "┥"
        /// Unicode box drawing character `┦`
        public static let upHeavyAndLeftDownLight: Character = "┦"
        /// Unicode box drawing character `┧`
        public static let downHeavyAndLeftUpLight: Character = "┧"
        /// Unicode box drawing character `┨`
        public static let verticalHeavyAndLeftLight: Character = "┨"
        /// Unicode box drawing character `┩`
        public static let downLightAndLeftUpHeavy: Character = "┩"
        /// Unicode box drawing character `┪`
        public static let upLightAndLeftDownHeavy: Character = "┪"
        /// Unicode box drawing character `┫`
        public static let heavyVerticalAndLeft: Character = "┫"
        /// Unicode box drawing character `┬`
        public static let lightDownAndHorizontal: Character = "┬"
        /// Unicode box drawing character `┭`
        public static let leftHeavyAndRightDownLight: Character = "┭"
        /// Unicode box drawing character `┮`
        public static let rightHeavyAndLeftDownLight: Character = "┮"
        /// Unicode box drawing character `┯`
        public static let downLightAndHorizontalHeavy: Character = "┯"
        /// Unicode box drawing character `┰`
        public static let downHeavyAndHorizontalLight: Character = "┰"
        /// Unicode box drawing character `┱`
        public static let rightLightAndLeftDownHeavy: Character = "┱"
        /// Unicode box drawing character `┲`
        public static let leftLightAndRightDownHeavy: Character = "┲"
        /// Unicode box drawing character `┳`
        public static let heavyDownAndHorizontal: Character = "┳"
        /// Unicode box drawing character `┴`
        public static let lightUpAndHorizontal: Character = "┴"
        /// Unicode box drawing character `┵`
        public static let leftHeavyAndRightUpLight: Character = "┵"
        /// Unicode box drawing character `┶`
        public static let rightHeavyAndLeftUpLight: Character = "┶"
        /// Unicode box drawing character `┷`
        public static let upLightAndHorizontalHeavy: Character = "┷"
        /// Unicode box drawing character `┸`
        public static let upHeavyAndHorizontalLight: Character = "┸"
        /// Unicode box drawing character `┹`
        public static let rightLightAndLeftUpHeavy: Character = "┹"
        /// Unicode box drawing character `┺`
        public static let leftLightAndRightUpHeavy: Character = "┺"
        /// Unicode box drawing character `┻`
        public static let heavyUpAndHorizontal: Character = "┻"
        /// Unicode box drawing character `┼`
        public static let lightVerticalAndHorizontal: Character = "┼"
        /// Unicode box drawing character `┽`
        public static let leftHeavyAndRightVerticalLight: Character = "┽"
        /// Unicode box drawing character `┾`
        public static let rightHeavyAndLeftVerticalLight: Character = "┾"
        /// Unicode box drawing character `┿`
        public static let verticalLightAndHorizontalHeavy: Character = "┿"
        /// Unicode box drawing character `╀`
        public static let upHeavyAndDownHorizontalLight: Character = "╀"
        /// Unicode box drawing character `╁`
        public static let downHeavyAndUpHorizontalLight: Character = "╁"
        /// Unicode box drawing character `╂`
        public static let verticalHeavyAndHorizontalLight: Character = "╂"
        /// Unicode box drawing character `╃`
        public static let leftUpHeavyAndRightDownLight: Character = "╃"
        /// Unicode box drawing character `╄`
        public static let rightUpHeavyAndLeftDownLight: Character = "╄"
        /// Unicode box drawing character `╅`
        public static let leftDownHeavyAndRightUpLight: Character = "╅"
        /// Unicode box drawing character `╆`
        public static let rightDownHeavyAndLeftUpLight: Character = "╆"
        /// Unicode box drawing character `╇`
        public static let downLightAndUpHorizontalHeavy: Character = "╇"
        /// Unicode box drawing character `╈`
        public static let upLightAndDownHorizontalHeavy: Character = "╈"
        /// Unicode box drawing character `╉`
        public static let rightLightAndLeftVerticalHeavy: Character = "╉"
        /// Unicode box drawing character `╊`
        public static let leftLightAndRightVerticalHeavy: Character = "╊"
        /// Unicode box drawing character `╋`
        public static let heavyVerticalAndHorizontal: Character = "╋"
        /// Unicode box drawing character `╌`
        public static let lightDoubleDashHorizontal: Character = "╌"
        /// Unicode box drawing character `╍`
        public static let heavyDoubleDashHorizontal: Character = "╍"
        /// Unicode box drawing character `╎`
        public static let lightDoubleDashVertical: Character = "╎"
        /// Unicode box drawing character `╏`
        public static let heavyDoubleDashVertical: Character = "╏"
        /// Unicode box drawing character `═`
        public static let doubleHorizontal: Character = "═"
        /// Unicode box drawing character `║`
        public static let doubleVertical: Character = "║"
        /// Unicode box drawing character `╒`
        public static let downSingleAndRightDouble: Character = "╒"
        /// Unicode box drawing character `╓`
        public static let downDoubleAndRightSingle: Character = "╓"
        /// Unicode box drawing character `╔`
        public static let doubleDownAndRight: Character = "╔"
        /// Unicode box drawing character `╕`
        public static let downSingleAndLeftDouble: Character = "╕"
        /// Unicode box drawing character `╖`
        public static let downDoubleAndLeftSingle: Character = "╖"
        /// Unicode box drawing character `╗`
        public static let doubleDownAndLeft: Character = "╗"
        /// Unicode box drawing character `╘`
        public static let upSingleAndRightDouble: Character = "╘"
        /// Unicode box drawing character `╙`
        public static let upDoubleAndRightSingle: Character = "╙"
        /// Unicode box drawing character `╚`
        public static let doubleUpAndRight: Character = "╚"
        /// Unicode box drawing character `╛`
        public static let upSingleAndLeftDouble: Character = "╛"
        /// Unicode box drawing character `╜`
        public static let upDoubleAndLeftSingle: Character = "╜"
        /// Unicode box drawing character `╝`
        public static let doubleUpAndLeft: Character = "╝"
        /// Unicode box drawing character `╞`
        public static let verticalSingleAndRightDouble: Character = "╞"
        /// Unicode box drawing character `╟`
        public static let verticalDoubleAndRightSingle: Character = "╟"
        /// Unicode box drawing character `╠`
        public static let doubleVerticalAndRight: Character = "╠"
        /// Unicode box drawing character `╡`
        public static let verticalSingleAndLeftDouble: Character = "╡"
        /// Unicode box drawing character `╢`
        public static let verticalDoubleAndLeftSingle: Character = "╢"
        /// Unicode box drawing character `╣`
        public static let doubleVerticalAndLeft: Character = "╣"
        /// Unicode box drawing character `╤`
        public static let downSingleAndHorizontalDouble: Character = "╤"
        /// Unicode box drawing character `╥`
        public static let downDoubleAndHorizontalSingle: Character = "╥"
        /// Unicode box drawing character `╦`
        public static let doubleDownAndHorizontal: Character = "╦"
        /// Unicode box drawing character `╧`
        public static let upSingleAndHorizontalDouble: Character = "╧"
        /// Unicode box drawing character `╨`
        public static let upDoubleAndHorizontalSingle: Character = "╨"
        /// Unicode box drawing character `╩`
        public static let doubleUpAndHorizontal: Character = "╩"
        /// Unicode box drawing character `╪`
        public static let verticalSingleAndHorizontalDouble: Character = "╪"
        /// Unicode box drawing character `╫`
        public static let verticalDoubleAndHorizontalSingle: Character = "╫"
        /// Unicode box drawing character `╬`
        public static let doubleVerticalAndHorizontal: Character = "╬"
        /// Unicode box drawing character `╭`
        public static let lightArcDownAndRight: Character = "╭"
        /// Unicode box drawing character `╮`
        public static let lightArcDownAndLeft: Character = "╮"
        /// Unicode box drawing character `╯`
        public static let lightArcUpAndLeft: Character = "╯"
        /// Unicode box drawing character `╰`
        public static let lightArcUpAndRight: Character = "╰"
        /// Unicode box drawing character `╱`
        public static let lightDiagonalUpperRightToLowerLeft: Character = "╱"
        /// Unicode box drawing character `╲`
        public static let lightDiagonalUpperLeftToLowerRight: Character = "╲"
        /// Unicode box drawing character `╳`
        public static let lightDiagonalCross: Character = "╳"
        /// Unicode box drawing character `╴`
        public static let lightLeft: Character = "╴"
        /// Unicode box drawing character `╵`
        public static let lightUp: Character = "╵"
        /// Unicode box drawing character `╶`
        public static let lightRight: Character = "╶"
        /// Unicode box drawing character `╷`
        public static let lightDown: Character = "╷"
        /// Unicode box drawing character `╸`
        public static let heavyLeft: Character = "╸"
        /// Unicode box drawing character `╹`
        public static let heavyUp: Character = "╹"
        /// Unicode box drawing character `╺`
        public static let heavyRight: Character = "╺"
        /// Unicode box drawing character `╻`
        public static let heavyDown: Character = "╻"
        /// Unicode box drawing character `╼`
        public static let lightLeftAndHeavyRight: Character = "╼"
        /// Unicode box drawing character `╽`
        public static let lightUpAndHeavyDown: Character = "╽"
        /// Unicode box drawing character `╾`
        public static let heavyLeftAndLightRight: Character = "╾"
        /// Unicode box drawing character `╿`
        public static let heavyUpAndLightDown: Character = "╿"
    }
}
