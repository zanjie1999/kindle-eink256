.class public Lcom/amazon/kcp/application/AndroidDeviceRequirements;
.super Ljava/lang/Object;
.source "AndroidDeviceRequirements.java"


# static fields
.field private static final ANDROID_API_LEVEL_CUT_OFF:I = 0x15

.field private static final APPLICATION_MEMORY_CUT_OFF:J = 0x1e00000L

.field private static final CPU_CUT_OFF:J = 0x7a120L

.field private static final DISPLAY_SIZE_CUT_OFF:I = 0x0

.field private static final INTERNAL_STORAGE_CUT_OFF:J = 0x500000L

.field private static final TOTAL_MEMORY_CUT_OFF:J = 0x40000L

.field private static final TOTAL_STORAGE_CUT_OFF:J = 0x3200000L


# direct methods
.method public static doesAndroidVersionMeetRequirements()Z
    .locals 2

    .line 65
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 66
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getAndroidApiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static doesCpuMeetRequirements()Z
    .locals 5

    .line 49
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 50
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getMaxCpuSpeed()J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static doesDisplayMeetRequirements()Z
    .locals 2

    .line 110
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 111
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDisplayDiagnonal()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static doesRamMeetRequirements()Z
    .locals 6

    .line 79
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 80
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getTotalMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x40000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getMaxApplicationMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static doesStorageMeetRequirements()Z
    .locals 6

    .line 94
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 95
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDataPartitionAvailable()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 96
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDataPartitionAvailable()J

    move-result-wide v1

    const-wide/32 v3, 0x3200000

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getExternalStorageAvailable()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
