.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
.super Ljava/lang/Object;
.source "DevicePowerStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DevicePowerStatus"


# instance fields
.field private final mAcChargePlug:Z

.field private final mBatteryPercentage:D

.field private final mIsCharging:Z

.field private final mUsbChargePlug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(DZZZ)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 26
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batteryPercentage outside of expected range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    iput-wide p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mBatteryPercentage:D

    .line 29
    iput-boolean p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mIsCharging:Z

    .line 30
    iput-boolean p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mUsbChargePlug:Z

    .line 31
    iput-boolean p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mAcChargePlug:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 63
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    .line 65
    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mBatteryPercentage:D

    iget-wide v4, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mBatteryPercentage:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mIsCharging:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mIsCharging:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mUsbChargePlug:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mUsbChargePlug:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mAcChargePlug:Z

    iget-boolean p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mAcChargePlug:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBatteryPercentage()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mBatteryPercentage:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mBatteryPercentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mIsCharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mUsbChargePlug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mAcChargePlug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCharging()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mIsCharging:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 52
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mBatteryPercentage:D

    const-string v3, "mBatteryPercentage"

    .line 53
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mIsCharging:Z

    const-string v2, "mIsCharging"

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mUsbChargePlug:Z

    const-string v2, "mUsbChargePlug"

    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->mAcChargePlug:Z

    const-string v2, "mAcChargePlug"

    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 57
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
