package matrix;

import java.util.Random;

class Student {
	int score;
	String name;
}

public class Rank {
	public static void main(String[] args) {

		Student[] score = new Student[5];
		Random random = new Random();
		String[] names = {"제이콥", "기호","승아","태빈","순신"};

		for (int i = 0; i < score.length; i++) {
			score[i] = new Student();               //점수값을 각각 배열에 넣기위함/인스턴스변수에
			score[i].name = names[i];
			score[i].score = random.nextInt(101);
		}
		for (int i = 0; i < score.length; i++) {
			for (int j = 0; i > j; j++) {
				if (score[i].score > score[j].score) {
					Student temp = score[i];
					score[i] = score[j];
					score[j] = temp;
				}
			}
		}
		for (int i = 0; i < score.length; i++) {
			System.out.printf("%d등\t%s\t%d점\n", i + 1, score[i].name, score[i].score);
		}
	}

}