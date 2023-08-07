public class Dog extends Pet{

    public Dog() {
        setTitle("Собака");
    }

    @Override
    public String toString() {
        return getPet() + " - " + getTitle() + ": кличка " + getName() + ", порода " + getKind() + ", дата рождения " + getDateOfBirth();
    }

    public String toStringNew() {
        return getName() + "," + getKind() + "," + getDateOfBirth();
    }
    
}
