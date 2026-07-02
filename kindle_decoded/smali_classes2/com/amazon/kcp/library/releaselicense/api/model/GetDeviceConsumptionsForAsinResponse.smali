.class public final Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;
.super Ljava/lang/Object;
.source "GetDeviceConsumptionsForAsinResponse.kt"


# instance fields
.field private final failureReason:Ljava/lang/String;

.field private final listDevicesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I

.field private final success:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->listDevicesMap:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->success:Z

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->failureReason:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->responseCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->listDevicesMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->listDevicesMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->success:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->success:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->failureReason:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->failureReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->responseCode:I

    iget p1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->responseCode:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getFailureReason()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getListDevicesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->listDevicesMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->responseCode:I

    return v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->listDevicesMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->success:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->failureReason:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->responseCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetDeviceConsumptionsForAsinResponse(listDevicesMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->listDevicesMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", failureReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->failureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
