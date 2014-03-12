package ocpkata;

public class FizzInterpreter implements Interpreter {

	public Boolean canHandle(int i) {
		return (i % 3) == 0;
	}

	public String translate(int i) {
		return "Fizz";
	}

}
