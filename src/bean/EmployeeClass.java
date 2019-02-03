package bean;

import java.io.Serializable;

public class EmployeeClass implements Serializable
{
	private int points = 0;
	private String name = null;
	
	public EmployeeClass()
	{
		
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
