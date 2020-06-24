package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.View

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
import com.gemini.jalen.ligament_commons.app.BaseFragment

class ${className} : BaseFragment<<#if isSupportDataBinding>${ViewDataBindingName}Binding<#else>ViewDataBinding</#if>>() {
    override fun getLayout(): Int {
        return R.layout.${layoutName}
    }

<#if !isSupportDataBinding>
    override fun isSupportDataBinding(): Boolean {
        return false
    }
<#else>
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        binder.target = this
    }
</#if>

<#if !isSupportIOC>
    override fun isSupportIOC(): Boolean {
        return false
    }
</#if>

<#if generateTitle>
    private fun getTitleValue(): String {
        return getString(R.string.title_${classResourceName})
    }
</#if>
}