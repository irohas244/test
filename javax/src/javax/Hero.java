package javax;

public class Hero {
private String name = "ああああ";
private int hp = 100;


void sleep(){
	this.hp = 100;
	// this　自分自身のインスタンス
	System.out.println(this.name + "は眠って回復した");
}

void sit(int sec){
	this.hp += sec;
	System.out.println(this.name + "は、" + sec + "秒座った");
	System.out.println("HPが" + sec + "ポイント回復した");
}
void slip(){
	this.hp -= 5;
	System.out.println(this.name + "は転んだ");
	System.out.println("５のダメージ");
}
private void run(){
	System.out.println(this.name + "は逃げ出した");
	System.out.println("GAMEOVER");
	System.out.println("最終HPは" + this.hp + "でした");
}
}