.class public Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;
.super Ljava/lang/Object;
.source "DiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscoveryResult"
.end annotation


# instance fields
.field private mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

.field private mResult:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->mResult:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    .line 39
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDevice()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    return-object v0
.end method

.method public getEvent()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->mResult:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    return-object v0
.end method
