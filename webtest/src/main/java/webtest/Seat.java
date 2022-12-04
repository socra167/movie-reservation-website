package webtest;

import java.util.ArrayList;

import com.google.gson.Gson;

public class Seat {
	int[] A = new int[] { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	int[] B = new int[] { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	int[] C = new int[] { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	int[] D = new int[] { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	
	public int[] getD() {
		return D;
	}

	public void setD(int[] d) {
		D = d;
	}

	public int[] getA() {
		return A;
	}

	public void setA(int[] a) {
		A = a;
	}

	public int[] getB() {
		return B;
	}

	public void setB(int[] b) {
		B = b;
	}

	public int[] getC() {
		return C;
	}

	public void setC(int[] c) {
		C = c;
	}

	// seat Input 예 : 0B4 -> 0번째 상영관의 B행 4열 석
	public void makeSeat(String seat) {
		System.out.println("makeSeat 호출");
		int col = Integer.parseInt(seat.charAt(2) + "");
		System.out.println("col : " + col);
		switch (seat.charAt(1)) {
		case 'A':
			A[col] = 2;
			break;
		case 'B':
			B[col] = 2;
			break;
		case 'C':
			C[col] = 2;
			break;
		case 'D':
			D[col] = 2;
			break;
		}
	}
}
