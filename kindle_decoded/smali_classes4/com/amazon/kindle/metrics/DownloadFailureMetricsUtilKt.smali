.class public final Lcom/amazon/kindle/metrics/DownloadFailureMetricsUtilKt;
.super Ljava/lang/Object;
.source "DownloadFailureMetricsUtil.kt"


# static fields
.field private static final SYSTEM_TRIGGER:Ljava/lang/String; = ".SYSTEM"

.field private static final USER_TRIGGER:Ljava/lang/String; = ".USER"


# direct methods
.method public static final getDownloadFailureTriggerAppending(Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Ljava/lang/String;
    .locals 1

    const-string v0, "triggerSource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$APP_STARTUP;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$NETWORK;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    instance-of p0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TEST;

    if-eqz p0, :cond_3

    :goto_0
    const-string p0, ".SYSTEM"

    goto :goto_1

    :cond_3
    const-string p0, ".USER"

    :goto_1
    return-object p0
.end method
