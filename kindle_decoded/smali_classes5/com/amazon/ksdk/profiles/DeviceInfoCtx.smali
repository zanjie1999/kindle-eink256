.class public final Lcom/amazon/ksdk/profiles/DeviceInfoCtx;
.super Ljava/lang/Object;
.source "DeviceInfoCtx.java"


# instance fields
.field final mAppVersion:Ljava/lang/String;

.field final mBuildType:Lcom/amazon/ksdk/profiles/BuildType;

.field final mDeviceModel:Ljava/lang/String;

.field final mOsVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/BuildType;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mDeviceModel:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mOsVersion:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mAppVersion:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mBuildType:Lcom/amazon/ksdk/profiles/BuildType;

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildType()Lcom/amazon/ksdk/profiles/BuildType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mBuildType:Lcom/amazon/ksdk/profiles/BuildType;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfoCtx{mDeviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mOsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mOsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mBuildType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/DeviceInfoCtx;->mBuildType:Lcom/amazon/ksdk/profiles/BuildType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
