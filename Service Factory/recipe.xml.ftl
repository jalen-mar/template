<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/Service.${ktOrJavaExt}.ftl"
           to="${escapeXmlAttribute(srcOut)}/${serviceName}Service.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${serviceName}Service.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/View.${ktOrJavaExt}.ftl"
           to="${escapeXmlAttribute(srcOut)}/view/${serviceName}View.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/view/${serviceName}View.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/Protocol.${ktOrJavaExt}.ftl"
           to="${escapeXmlAttribute(srcOut)}/protocol/${serviceName}Protocol.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/protocol/${serviceName}Protocol.${ktOrJavaExt}" />

</recipe>
