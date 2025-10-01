
public  class Student {
	 static int totalStudent=0;
	 String name;
	 
	 Student(String name){
		 this.name=name;
		 totalStudent++;
	 }
	void display() {
		System.out.println("name : " + name + " totalStudent : " + totalStudent);
	}
	
}

 class Main{
	public static void main(String[] args) {
		Student s=new Student("raj");
		Student s1=new Student("ram");
		Student s2=new Student("radhika");
		
		s.display();
		s1.display();
		s2.display();
	}

}
