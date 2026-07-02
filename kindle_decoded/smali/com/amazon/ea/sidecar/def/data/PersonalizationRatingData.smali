.class public Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;
.super Ljava/lang/Object;
.source "PersonalizationRatingData.java"


# instance fields
.field public final rating:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->rating:I

    .line 21
    iput-wide p2, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->timestamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    if-eq v2, v3, :cond_2

    return v1

    .line 35
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    .line 36
    iget v2, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->rating:I

    iget v3, p1, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->rating:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->timestamp:J

    iget-wide v4, p1, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->timestamp:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    iget v1, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->rating:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 46
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->rating:I

    const-string/jumbo v2, "rating"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;->timestamp:J

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
