.class public Lcom/audible/mobile/activation/network/factory/ActivationRequestData;
.super Ljava/lang/Object;
.source "ActivationRequestData.java"

# interfaces
.implements Lcom/audible/mobile/downloader/factory/DownloadRequestData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/factory/DownloadRequestData<",
        "Lcom/audible/mobile/activation/network/factory/ActivationRequestType;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

.field private final type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/activation/network/factory/ActivationRequestType;Lcom/audible/mobile/activation/DeviceInfoProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    .line 19
    iput-object p2, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 66
    const-class v2, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    check-cast p1, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    .line 71
    iget-object v2, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    iget-object p1, p1, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getDeviceActivationSerialNumber()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-interface {v0}, Lcom/audible/mobile/activation/DeviceInfoProvider;->getDeviceActivationSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-interface {v0}, Lcom/audible/mobile/activation/DeviceInfoProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-interface {v0}, Lcom/audible/mobile/activation/DeviceInfoProvider;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-interface {v0}, Lcom/audible/mobile/activation/DeviceInfoProvider;->getPlayerType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/audible/mobile/activation/network/factory/ActivationRequestType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/audible/mobile/downloader/factory/DownloadType;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->getType()Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v2, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivationRequestData{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->type:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;->deviceInfo:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
