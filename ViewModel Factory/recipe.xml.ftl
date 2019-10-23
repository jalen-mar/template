<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/ViewModel.${ktOrJavaExt}.ftl"
           to="${escapeXmlAttribute(srcOut)}/${modelName}Model.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${modelName}Model.${ktOrJavaExt}" />

</recipe>
