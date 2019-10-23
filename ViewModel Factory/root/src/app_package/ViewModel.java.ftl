package ${packageName};

import com.gemini.jalen.ligament.databinding.WindowModel;

<#if isSupportIOC>
import javax.inject.Inject;
</#if>

public class ${modelName}Model extends WindowModel implements ${modelName}View {
<#if isSupportIOC>
    @Inject
</#if>
    public ${modelName}Model() {}

    @Override
    public WindowModel init() {
        return super.init();
    }

    @Override
    protected void onCleared() {
    }
}
