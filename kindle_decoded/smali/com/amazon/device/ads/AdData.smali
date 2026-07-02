.class Lcom/amazon/device/ads/AdData;
.super Ljava/lang/Object;
.source "AdData.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/amazon/device/ads/AAXCreative;",
        ">;"
    }
.end annotation


# instance fields
.field private adHeight:I

.field private adWidth:I

.field private creative:Ljava/lang/String;

.field private creativeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation
.end field

.field private expirationTimeMs:J

.field private fetched:Z

.field private impPixelUrl:Ljava/lang/String;

.field private instrPixelUrl:Ljava/lang/String;

.field private properties:Lcom/amazon/device/ads/AdProperties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    return-void
.end method


# virtual methods
.method protected getCreative()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creative:Ljava/lang/String;

    return-object v0
.end method

.method protected getCreativeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/amazon/device/ads/AdData;->adHeight:I

    return v0
.end method

.method protected getImpressionPixelUrl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->impPixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getInstrumentationPixelUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->instrPixelUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://fls-na.amazon.com/1/action-impressions/1/OE/mobile-ads-sas/action"

    :goto_0
    return-object v0
.end method

.method public getIsFetched()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdData;->fetched:Z

    return v0
.end method

.method protected getProperties()Lcom/amazon/device/ads/AdProperties;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object v0
.end method

.method public getTimeToExpire()J
    .locals 4

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-wide v2, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public getWidth()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/amazon/device/ads/AdData;->adWidth:I

    return v0
.end method

.method public isExpired()Z
    .locals 6

    .line 170
    iget-wide v0, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    iget-wide v3, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected setCreative(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->creative:Ljava/lang/String;

    return-void
.end method

.method protected setCreativeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    return-void
.end method

.method protected setExpirationTimeMillis(J)V
    .locals 0

    .line 162
    iput-wide p1, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    return-void
.end method

.method public setFetched(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdData;->fetched:Z

    return-void
.end method

.method protected setHeight(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/amazon/device/ads/AdData;->adHeight:I

    return-void
.end method

.method protected setImpressionPixelUrl(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->impPixelUrl:Ljava/lang/String;

    return-void
.end method

.method protected setInstrumentationPixelUrl(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->instrPixelUrl:Ljava/lang/String;

    return-void
.end method

.method protected setProperties(Lcom/amazon/device/ads/AdProperties;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->properties:Lcom/amazon/device/ads/AdProperties;

    return-void
.end method

.method protected setWidth(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/amazon/device/ads/AdData;->adWidth:I

    return-void
.end method
