.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;
.super Ljava/lang/Exception;
.source "DeviceProvisioningDeferredException.java"


# instance fields
.field public final mWaitTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;->mWaitTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 21
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;

    .line 25
    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;->mWaitTime:J

    iget-wide v4, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;->mWaitTime:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 30
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;->mWaitTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProvisioningDeferredException{mWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;->mWaitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
