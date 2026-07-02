.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;
.super Ljava/lang/Object;
.source "PeripheralDiscoveredEventData.java"


# instance fields
.field private final mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceDetails can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    return-object v0
.end method
