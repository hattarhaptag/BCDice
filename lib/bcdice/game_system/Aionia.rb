# frozen_string_literal: true

module BCDice
  module GameSystem
    class Aionia < Base
      # ゲームシステムの識別子
      ID = "Aionia"

      # ゲームシステム名
      NAME = "慈悲なきアイオニア"

      # ゲームシステム名の読みがな
      SORT_KEY = "じひなきあいおにあ"

      HELP_MESSAGE = <<~INFO_MESSAGE_TEXT
        - 技能判定（クリティカル・ファンブルなし）
        {n}d>={dif} n=10面ダイスの数、dif=難易度
        - 技能判定（クリティカル・ファンブルあり）
        {n}dt>={dif} n=10面ダイスの数、dif=難易度

        例：2d>=5    （一般技能を活用して難易度5の技能判定。 クリファンなし。）
        例：3dt>=15  （専門技能を活用して難易度15の技能判定。クリファンあり。）
        例：1d+2>=8  （一般技能を活用せず難易度8の技能判定。 ボーナスとして+2点の補正あり。  クリファンなし。）
        例：3dt-3>=10（専門技能を活用して難易度10の技能判定。ペナルティとして-3点の補正あり。クリファンあり。）
        例：2dt>=4/8/12  （一般技能を活用して難易度4/8/12の段階的な技能判定。クリファンあり。）

      INFO_MESSAGE_TEXT

      register_prefix()

      def eval_game_system_specific_command(command)
        return nil
      end
    end
  end
end
