package ${escapeKotlinIdentifiers(packageName)}

import com.gemini.jalen.rxservice.Service

<#if isSupportIOC>
import javax.inject.Inject
</#if>

import ${escapeKotlinIdentifiers(packageName)}.view.${serviceName}View

class ${serviceName}Service <#if isSupportIOC>@Inject constructor()</#if> : Service<${serviceName}View>() {
}
