.class public abstract Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/DeviceInfo$NullDeviceInfo;,
        Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;,
        Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;
    }
.end annotation


# static fields
.field private static final OS_PACKAGE_NAME:Lcom/amazon/whispersync/dcp/settings/SettingString;


# instance fields
.field private mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingString;

    const-string/jumbo v1, "os_package_name"

    const-string v2, "com.amazon.android.os"

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->OS_PACKAGE_NAME:Lcom/amazon/whispersync/dcp/settings/SettingString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuildName()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mBuildName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildNumber()I
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;

    move-result-object v0

    iget v0, v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mBuildNumber:I

    return v0
.end method

.method public getBuildType()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mBuildType:Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    return-object v0
.end method

.method public getDeviceSecret()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public getOSPackageName()Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->OS_PACKAGE_NAME:Lcom/amazon/whispersync/dcp/settings/SettingString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductDevice()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mProductDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mProductModel:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureType()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mSignatureType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSoftwareVersion()Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getBuildNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;
.end method
