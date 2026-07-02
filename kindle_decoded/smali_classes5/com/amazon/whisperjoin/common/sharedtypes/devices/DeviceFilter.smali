.class public abstract Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;,
        Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
    }
.end annotation


# instance fields
.field public mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-void
.end method


# virtual methods
.method public abstract filter(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
.end method

.method public getBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
