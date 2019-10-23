<recipe>
    <instantiate from="root/res/layout/activity_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <merge from="root/res/values/strings.xml.ftl"
         to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
</recipe>
