qti-telephony-common
====================

Including this jar
------------------
To include this jar in your builds, you must add qti-telephony-common to PRODUCT_PACKAGES and add telephony-ext to PRODUCT_BOOT_JARS. For devices not using qcom sepolicy, extphone must be labelled as u:object_r:radio_service:s0 in the device's private platform selinux service contexts.
Note: the following error in logcat can be safely ignored:
... E System  : Unable to open boot classpath entry: /system/framework/telephony-ext.jar
... E System  : java.io.FileNotFoundException: File doesn't exist: /system/framework/telephony-ext.jar

Avoiding this jar
-----------------
If a device provides its own qti-telephony-common target, either by extending this with more device specific extensions or setting up the proprietary one as a target, the device must set TARGET_PROVIDES_QTI_TELEPHONY_JAR to true.
