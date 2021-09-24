package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber-report"}, //relatorio e screenshots na pasta target
        features = "src/test/resources/features",
        glue = "stepsDefinitions",
        tags = "@cadastroValido1",
        snippets = CucumberOptions.SnippetType.CAMELCASE,
        dryRun = false
)

public class RunnerTest {
}
