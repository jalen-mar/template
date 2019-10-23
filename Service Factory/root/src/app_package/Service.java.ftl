package ${packageName};

<#if isSupportIOC>
import javax.inject.Inject;
</#if>

import com.gemini.jalen.rxservice.Service;
import ${packageName}.view.${serviceName}View;

public class ${serviceName}Service extends Service<${serviceName}View> {
<#if isSupportIOC>
    @Inject
</#if>
    public ${serviceName}Service() {}
}
