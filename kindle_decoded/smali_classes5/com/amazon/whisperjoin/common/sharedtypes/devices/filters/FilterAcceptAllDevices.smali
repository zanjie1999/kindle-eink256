.class public Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterAcceptAllDevices;
.super Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
.source "FilterAcceptAllDevices.java"


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-void
.end method


# virtual methods
.method public filter(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
    .locals 0

    .line 19
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->ACCEPT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FilterAcceptAllDevices{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
