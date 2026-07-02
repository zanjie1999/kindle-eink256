.class public Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByProductIndex;
.super Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
.source "FilterByProductIndex.java"


# instance fields
.field private final mProductIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByProductIndex;->mProductIndex:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-void
.end method


# virtual methods
.method public filter(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByProductIndex;->mProductIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->ACCEPT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    return-object p1

    .line 25
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->REJECT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FilterByProductIndex{mProductIndex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByProductIndex;->mProductIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
