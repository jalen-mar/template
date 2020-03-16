package ${packageName};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

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
import com.gemini.jalen.ligament_commons.app.BaseActivity;
import com.gemini.jalen.ligament.widget.Toast;

public class ${className} extends BaseActivity<<#if isSupportDataBinding>${ViewDataBindingName}Binding<#else>ViewDataBinding</#if>> {
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
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binder.setTarget(this);
    }
</#if>

<#if !isSupportIOC>
    @Override
    protected boolean isSupportIOC() {
        return false;
    }
</#if>

<#if generateTitle>
    @Override
    protected String getTitleValue() {
        return getString(R.string.title_${classResourceName});
    }
<#else>
    @Override
    protected int enableToolbar() {
        return ACTION_UNABLE;
    }
</#if>

<#include "../../../../common/jni_code_snippet.java.ftl">
}
