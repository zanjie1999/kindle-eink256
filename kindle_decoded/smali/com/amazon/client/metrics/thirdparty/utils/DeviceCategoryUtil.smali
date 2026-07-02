.class public Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;
.super Ljava/lang/Object;
.source "DeviceCategoryUtil.java"


# static fields
.field private static sDeviceCategory:Ljava/lang/String;


# direct methods
.method public static getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->sDeviceCategory:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "uimode"

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 25
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p0, "SetTopBox"

    .line 26
    sput-object p0, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->sDeviceCategory:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Smartphone"

    .line 31
    sput-object p0, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->sDeviceCategory:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "Tablet"

    .line 33
    sput-object p0, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->sDeviceCategory:Ljava/lang/String;

    .line 37
    :cond_2
    :goto_0
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/utils/DeviceCategoryUtil;->sDeviceCategory:Ljava/lang/String;

    return-object p0
.end method
