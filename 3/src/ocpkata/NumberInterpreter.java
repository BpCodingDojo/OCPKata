package ocpkata;

public class NumberInterpreter implements Interpreter {

	public Boolean canHandle(int i) {
		return true;
	}

	@Override
	public String translate(int i) {
		return (new Integer(i)).toString();
	}

}
