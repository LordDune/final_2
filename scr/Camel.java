public class Camel extends PackAnimal{
    public Camel() {
        setTitle("Верблюд");
    }

    @Override
    public String toString() {
        return getPackAnimals() + " - " + getTitle() + ": кличка " + getName() + ", порода " + getKind() + ", дата рождения " + getDateOfBirth();
    }

    public String toStringNew() {
        return getName() + "," + getKind() + "," + getDateOfBirth();
    }
    
}
