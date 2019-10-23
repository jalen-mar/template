<?xml version="1.0"?>
<globals>
    <#assign generateKotlin=(((includeKotlinSupport!false) || (language!'Java')?string == 'Kotlin'))>

    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="ktOrJavaExt" type="string" value="${generateKotlin?string('kt','java')}" />
</globals>
