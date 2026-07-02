.class public final Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;
.super Ljava/lang/Object;
.source "DeviceConsumptionInfo.kt"


# instance fields
.field private final asinDownloadTime:J

.field private final deviceId:Ljava/lang/String;

.field private final deviceName:Ljava/lang/String;

.field private final deviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceType:Ljava/lang/String;

    iput-wide p4, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->asinDownloadTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceName:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->asinDownloadTime:J

    iget-wide v2, p1, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->asinDownloadTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAsinDownloadTime()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->asinDownloadTime:J

    return-wide v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceType:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->asinDownloadTime:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConsumptionInfo(deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asinDownloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;->asinDownloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
