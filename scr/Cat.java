public class Cat extends Pet {
    public Cat() {
        setTitle("Кошка");
    }

    @Override
    public String toString() {
        return getPet() + " - " + getTitle() + ": кличка " + getName() + ", порода " + getKind() + ", дата рождения " + getDateOfBirth();
    }

    public String toStringNew() {
        return getName() + "," + getKind() + "," + getDateOfBirth();
    }
    
}
