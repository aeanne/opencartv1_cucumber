package testRunner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions
        (
               //features = {".//features/"},
               features= {".//Features/Login.feature", ".//Features/AccountRegistration.feature"},
                //features= {},
               // features= {".//Features/LoginDDT.feature"},
                //features="@target/rerun.txt",// this use when you want to run only failure

                glue="stepDefinitions",
                dryRun = false,                //tags="@sanity"// scenarios tagged with @sanity
               // tags="@sanity and @regression"  // scenarios tagged with both @sanity and @regression
                //tags="@sanity or @regression" // scenarios tagged with either @sanity or @regression
               //tags="@sanity and not @regression"  // scenarios tagged with @sanity but not @regression

                plugin= {"pretty",
                "html:reports/myreport.html",
                "rerun:target/rerun.txt", //Mandatory To capture failures

        }




        )

public class TestRun {
}
