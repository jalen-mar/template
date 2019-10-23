<?xml version="1.0" encoding="utf-8"?>
<#if isSupportDataBinding>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools">

    <data>
        <variable
            name="target"
            type="${packageName}.${className}" />
    </data>

    <LinearLayout android:orientation="vertical"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        tools:context="${relativePackage}.${className}">

    </LinearLayout>
</layout>
<#else>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:orientation="vertical"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="${relativePackage}.${className}">

</LinearLayout>
</#if>