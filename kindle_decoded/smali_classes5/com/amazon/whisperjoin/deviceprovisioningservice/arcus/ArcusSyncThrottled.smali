.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;
.super Ljava/lang/Exception;
.source "ArcusSyncThrottled.java"


# instance fields
.field private final mWaitTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;->mWaitTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 23
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;

    .line 24
    iget-wide v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;->mWaitTime:J

    iget-wide v5, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;->mWaitTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWaitTime()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;->mWaitTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    iget-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;->mWaitTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
