package campus;


/* ----  Importaciones de java  ---- */
import java.util.Scanner;
import campus.views.*;

/* ----  Importaciones de archivos  ---- */





public class App {
    public static void main(String[] args) {
    
        int op = 0;
        Scanner leer = new Scanner(System.in);


        try {
            CrudMenu[] menus = new CrudMenu[] {
                new MenuAlumno(),
                new MenuAsignatura(),
                new MenuReportes(),
            };

            op = 0;
            while(true) {
                System.out.println("\n\tMENU PRINCIPAL");
                System.out.println("-".repeat(30));
                for (int i = 0; i < menus.length; i++) {
                    System.out.println((i + 1) + ". " + menus[i].getMenuName());
                }
                System.out.println("\n23 para salir...");
                System.out.println("-".repeat(30) + "\n");
            
                System.out.print("Ingrese una opción: ");
                op = leer.nextInt();
            
                if (op == 23) {
                    break;
                }
                if (op >= 1 && op <= menus.length) {
                    menus[op - 1].crud(leer);
                } else {
                    System.out.println("Opción no válida. Por favor, elige una opción entre 1 y " + menus.length + ", o 23 para salir.");
                }
            }

            System.out.println("Cerrando el programa...");
        } finally {
            leer.close();
        }
    
    }

}





/*
        } catch (InputMismatchException e) {
            System.out.println("---> Dato invalido. Ingrese un numero");
            scanner.next();
        }
    } while (true);
    inventory.addProduct(new Product(name, price, referenceNumber, quantity, category));
    System.out.println("\nProducto "+name+" Creado exitosamente\n\n");
    break;
case 2:
    System.out.print("Numero Referencia: ");
    referenceNumber = scanner.nextInt();
    if (!inventory.isValidProduct(referenceNumber)) {
        System.out.println("\n---> El producto no existe\n\n");
*/