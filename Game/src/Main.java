
public class Main {
	static String name = "すけさん";
	static int lv = 45;                         //プレイヤーのレベル

		public static void main(String[] args){
			putJyosyou();                      //序章を表示

			if(lv < 40){                          //レベルが40未満の場合ゲームオーバーを表示
				putGameOver();
			}else{
				putGameClear();              //レベルが40以上ならゲームクリアの画面を表示
			}

		}

		static void putJyosyou(){
			System.out.println("魔王が" + "世界を滅ぼそうとしている");
			System.out.println(name + "は世界を救うための旅に出ることになった");
		}
		static void putGameOver(){
			System.out.println("GAMEOVER");
			System.out.println("目の前が真っ暗になった！");
		}
		static void putGameClear(){
			System.out.println();
		}

}
