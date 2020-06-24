package ${packageName};

import android.os.Bundle;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
<#if isSupportDataBinding>
    <#if applicationPackage??>
import ${applicationPackage}.databinding.${ViewDataBindingName}Binding;
    </#if>
<#else>
import androidx.databinding.ViewDataBinding;
</#if>
import com.gemini.jalen.ligament_commons.app.BaseFragment;

public class ${className} extends BaseFragment<<#if isSupportDataBinding>${ViewDataBindingName}Binding<#else>ViewDataBinding</#if>> {
    @Override
    protected int getLayout() {
        return R.layout.${layoutName};
    }

<#if !isSupportDataBinding>
    @Override
    protected boolean isSupportDataBinding() {
        return false;
    }
<#else>
    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        getBinder().setTarget(this);
    }
</#if>

<#if !isSupportIOC>
    @Override
    protected boolean isSupportIOC() {
        return false;
    }
</#if>

<#if generateTitle>
    private String getTitleValue() {
        return getString(R.string.title_${classResourceName});
    }
</#if>
}