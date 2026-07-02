.class public Lcom/amazon/nwstd/utils/DeviceRequirements;
.super Ljava/lang/Object;
.source "DeviceRequirements.java"


# static fields
.field private static final MINIMUM_GLES_VERSION:I = 0x20000

.field private static final MINIMUM_RAM_MEMORY_FOR_FULL_VERSION:J = 0x80000L


# direct methods
.method public static doesOpenGLMeetRequirements(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 46
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 47
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static doesRamMeetRequirements()Z
    .locals 5

    .line 29
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 30
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
