.class public Lcom/amazon/kindle/fastmetrics/jni/fastmetricsJNI;
.super Ljava/lang/Object;
.source "fastmetricsJNI.java"


# direct methods
.method public static final native AppSession_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;)J
.end method

.method public static final native AppSession_Builder_setAppVersion(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setCountryOfResidence(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setCustomerId(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setDeviceFamily(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;I)J
.end method

.method public static final native AppSession_Builder_setDeviceModel(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setDeviceSerialNumber(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setDeviceType(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setOsVersion(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setPreferredMarketplaceId(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_Builder_setTimeZone(JLcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native AppSession_SWIGUpcast(J)J
.end method

.method public static final native FastMetricsPublisher_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;)J
.end method

.method public static final native FastMetricsPublisher_Builder_setDiskCacheSize(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;J)J
.end method

.method public static final native FastMetricsPublisher_Builder_setFlushPeriod(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;J)J
.end method

.method public static final native FastMetricsPublisher_Builder_setIsDebug(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;Z)J
.end method

.method public static final native FastMetricsPublisher_Builder_setMaximumFlushSize(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;J)J
.end method

.method public static final native FastMetricsPublisher_EmitRecord(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;JLcom/amazon/kindle/fastmetrics/jni/Payload;)V
.end method

.method public static final native FastMetricsPublisher_EndAppSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)V
.end method

.method public static final native FastMetricsPublisher_EndReadingSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)V
.end method

.method public static final native FastMetricsPublisher_GetPayload(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)Ljava/lang/String;
.end method

.method public static final native FastMetricsPublisher_StartAppSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;JLcom/amazon/kindle/fastmetrics/jni/AppSession;)V
.end method

.method public static final native FastMetricsPublisher_StartReadingSession(JLcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;JLcom/amazon/kindle/fastmetrics/jni/ReadingSession;)V
.end method

.method public static final native Payload_Builder_addBoolean(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;Z)J
.end method

.method public static final native Payload_Builder_addDouble(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;D)J
.end method

.method public static final native Payload_Builder_addInteger(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;I)J
.end method

.method public static final native Payload_Builder_addLong(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;J)J
.end method

.method public static final native Payload_Builder_addString(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native Payload_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/Payload$Builder;)J
.end method

.method public static final native ReadingSession_Builder_build(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;)J
.end method

.method public static final native ReadingSession_Builder_setAsin(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setAssetId(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setContentType(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setEmbeddedId(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setEndReadingLocation(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;J)J
.end method

.method public static final native ReadingSession_Builder_setFormat(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setMaxPosition(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;J)J
.end method

.method public static final native ReadingSession_Builder_setMimeType(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setRevisionId(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Ljava/lang/String;)J
.end method

.method public static final native ReadingSession_Builder_setStartReadingLocation(JLcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;J)J
.end method

.method public static final native ReadingSession_SWIGUpcast(J)J
.end method

.method public static final native delete_AppSession(J)V
.end method

.method public static final native delete_AppSession_Builder(J)V
.end method

.method public static final native delete_FastMetricsPublisher(J)V
.end method

.method public static final native delete_FastMetricsPublisher_Builder(J)V
.end method

.method public static final native delete_Payload(J)V
.end method

.method public static final native delete_Payload_Builder(J)V
.end method

.method public static final native delete_ReadingSession(J)V
.end method

.method public static final native delete_ReadingSession_Builder(J)V
.end method

.method public static final native delete_Session(J)V
.end method

.method public static final native new_AppSession_Builder()J
.end method

.method public static final native new_FastMetricsPublisher_Builder(I)J
.end method

.method public static final native new_Payload_Builder(Ljava/lang/String;J)J
.end method

.method public static final native new_ReadingSession_Builder()J
.end method
