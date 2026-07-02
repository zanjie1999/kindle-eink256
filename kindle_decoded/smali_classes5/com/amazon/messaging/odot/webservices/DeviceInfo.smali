.class public abstract Lcom/amazon/messaging/odot/webservices/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;,
        Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
    }
.end annotation


# static fields
.field private static final OS_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.android.os"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuildName()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mBuildName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildNumber()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    move-result-object v0

    iget v0, v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mBuildNumber:I

    return v0
.end method

.method public getBuildType()Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mBuildType:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

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

    const-string v0, "com.amazon.android.os"

    return-object v0
.end method

.method public getProductDevice()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mProductDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mProductModel:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureType()Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mSignatureType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSoftwareVersion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getBuildNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;
.end method
