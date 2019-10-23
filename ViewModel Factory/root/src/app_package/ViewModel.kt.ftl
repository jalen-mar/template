package ${escapeKotlinIdentifiers(packageName)}

import com.gemini.jalen.ligament.databinding.WindowModel

<#if isSupportIOC>
import javax.inject.Inject
</#if>

class ${modelName}Model <#if isSupportIOC>@Inject constructor()</#if> : WindowModel(), ${modelName}View {
    override fun init(): WindowModel {
        return super.init()
    }

    override fun onCleared() {
    }
}
