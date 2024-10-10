package examples;

import com.intuit.karate.junit5.Karate;

public class Runner {
//    @Karate.Test
//    public com.intuit.karate.Runner.Builder<Karate> runPet(){
//        return Karate.run("petRequest").relativeTo(getClass());
//    }

    @Karate.Test
    public com.intuit.karate.Runner.Builder<Karate> runUser(){
        return Karate.run("userRequest").relativeTo(getClass());
    }
}
