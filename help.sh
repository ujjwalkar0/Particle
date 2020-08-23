math(){
	local a=$1
	local b=$2
	local sum=$(( a + b))
	echo $sum
}
help(){
    structure()
    {
        echo
        echo "
    Def: Structure is a user defined data type that can be used to group elements of different types into a single type.
        
    How to defined ?

    ----------------Defining Structure in Global Score--------------------

    struct{
        //elements
    } name1,name2...;


    Example :
    You want to store information of a sttudent

    struct{
        char *name;
        int roll;
    }student1,student2;

    int main(){
        student1.name = \"Ujjwal\";
        student2.name = \"Ritankar\";
        printf(\"%s\",student1.name);
    }

    it will print name of student1

    ---------------- Defining in Global and Local Score ----------------------
    struct student{
        char *name;
        int roll;
    }student1 //student1 is global variable

    int abc{
        struct student student2 //student2is local variable
    }
    int main(){
        
        // we can use student1 but can't use student2 from here
    }

    --------------------------- Using typedef -----------------------

    typedef struct student   //-----------------> Old Datatype
    {
        char *name;
        int roll;
    } student;   //------------->> New Datatype

    int main(){
        student student1;  //instead of struct student student1
    }

    -------------------------------------------------------

    struct abc {
        int a;
        int b;
    };
    int main(){
        struct abc x = {23,34};
        printf(\"%d\",x.a);      // output :- 23 
    }


    ----------------- Wrong --------------------------

    struct abc {
        int a = 5;
        int v = 9;
    }

    ---------- Designated Initialization ---------------

    struct abc {
        int x;
        int y;
        int z;
    };

    int main(){
        struct abc a = {.y=20, .x=10, .z=30};
        printf(\"%d %d %d\", a.x, a.y, a.z);
        return 0;
    }


    ------------------ Array of Structure ----------------

    struct abc{
        int x;
        int y;
    };
    int main(){
        struct abc c[2];
        for(int i=0;i<2;i++){
            scanf(\"%d\",&c[i].x);
            scanf(\"%d\",&c[i].y);
        }
        for(int i=0;i<2;i++){
            printf(\"%d\",c[i].x);
            printf(\"%d\",c[i].y);
        }
    }


    --------------: Pointer to structure :--------------

    struct abc{
        int x;
        int y;
    };

    int main(){
        struct abc a = {0, 1};
        struct abc *ptr = &a; // means struct abc *ptr; ptr = &a

        printf(\"%d %d\", ptr->x,ptr->y); // ptr->x  means (*ptr).x means (*&a).x means a.x
        return 0;
    }

    "


    }
    print(){
        echo "
In C:
    printf(\"Hello World\");      // Hello World
    printf(\"%d\",5);             // 5
    printf(\"%s\",\"Hello\");     // Hello
    printf(\"%c\",'H');           // H
"
   echo "
In Particle:
    print Hello
    print %d 5
    print %s Hello
"
    }
    scan(){
        echo "
In C:
    int i;
    scanf(\"%d\",5);             // 5
"
   echo "
In Particle:
    int i
    scan d i
"
    }
    $1
}