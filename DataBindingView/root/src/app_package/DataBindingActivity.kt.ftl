package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle

import kotlinx.android.synthetic.main.${layoutName}.*

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if isSupportDataBinding>
    <#if applicationPackage??>
import ${applicationPackage}.databinding.${ViewDataBindingName}Binding
    </#if>
<#else>
import androidx.databinding.ViewDataBinding
</#if>
import com.gemini.jalen.ligament_commons.app.BaseActivity

class ${className} : BaseActivity<<#if isSupportDataBinding>${ViewDataBindingName}Binding<#else>ViewDataBinding</#if>>() {
    override fun getLayout(): Int {
        return R.layout.${layoutName}
    }

<#if !isSupportDataBinding>
    override fun isSupportDataBinding(): Boolean {
        return false
    }
<#else>
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binder.target = this
    }
</#if>

<#if !isSupportIOC>
    override fun isSupportIOC(): Boolean {
        return false
    }
</#if>

<#if generateTitle>
    override fun getTitleValue(): String {
        return getString(R.string.title_${classResourceName})
    }
<#else>
    override fun enableToolbar(): Int {
        return ACTION_UNABLE
    }
</#if>
}