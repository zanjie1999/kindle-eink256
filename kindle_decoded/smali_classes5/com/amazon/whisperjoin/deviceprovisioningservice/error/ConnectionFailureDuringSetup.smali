.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;
.super Ljava/lang/Exception;
.source "ConnectionFailureDuringSetup.java"


# instance fields
.field private final mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 27
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    .line 29
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDeviceSession()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->mDeviceSession:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
