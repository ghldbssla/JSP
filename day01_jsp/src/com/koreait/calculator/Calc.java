package com.koreait.calculator;

public class Calc {
	public char oper;
	public String num1;
	public String num2;
	
	public Calc(char oper, String num1, String num2) {
		this.oper = oper;
		this.num1 = num1;
		this.num2 = num2;
	}

	public String submit() {
		String result="";
		switch(oper) {
		case '+':
			result=add()+"";
			break;
		case '-':
			result=sub()+"";
			break;
		case '*':
			result=mul()+"";
			break;
		case '/':
			try {
				result=div()+"";
			} catch (ArithmeticException e) {
				result = "0으로 나눌 수 없습니다.";
			}
			break;
		}
		return result;
	}
	
	public int add() {
		return Integer.parseInt(num1)+Integer.parseInt(num2);
	}
	public int sub() {
		return Integer.parseInt(num1)-Integer.parseInt(num2);
	}
	public int mul() {
		return Integer.parseInt(num1)*Integer.parseInt(num2);
	}
	public int div() throws ArithmeticException{
		if(num2.equals("0")) {
			throw new ArithmeticException();
		}
		return Integer.parseInt(num1)/Integer.parseInt(num2);
	}
}
