public class Hamster  extends Pet{
    public Hamster() {
        setTitle("Хомяк");
    }

    @Override
    public String toString() {
        return getPet() + " - " + getTitle() + ": кличка " + getName() + ", порода " + getKind() + ", дата рождения " + getDateOfBirth();
    }

    public String toStringNew() {
        return getName() + "," + getKind() + "," + getDateOfBirth();
    }
    
}
