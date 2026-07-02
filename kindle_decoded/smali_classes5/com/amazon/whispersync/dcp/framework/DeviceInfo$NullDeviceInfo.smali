.class public Lcom/amazon/whispersync/dcp/framework/DeviceInfo$NullDeviceInfo;
.super Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullDeviceInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionInfo()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
