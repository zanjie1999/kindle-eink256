.class public Lcom/audible/application/stats/integration/StatsMediaItem;
.super Ljava/lang/Object;
.source "StatsMediaItem.java"


# static fields
.field private static final DEFAULT_DELIVERY_TYPE:Lcom/audible/application/stats/integration/DeliveryType;


# instance fields
.field private final mAsin:Ljava/lang/String;

.field private final mContentDiscoverySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeliveryType:Lcom/audible/application/stats/integration/DeliveryType;

.field private final mLengthOfBook:J

.field private final mNarrationSpeed:F

.field private final mPlayingImmersionReading:Z

.field private final mSubscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/application/stats/integration/DeliveryType;->DOWNLOAD:Lcom/audible/application/stats/integration/DeliveryType;

    sput-object v0, Lcom/audible/application/stats/integration/StatsMediaItem;->DEFAULT_DELIVERY_TYPE:Lcom/audible/application/stats/integration/DeliveryType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/audible/application/stats/integration/StatsMediaItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;Lcom/audible/application/stats/integration/DeliveryType;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;Lcom/audible/application/stats/integration/DeliveryType;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            "Lcom/audible/application/stats/integration/DeliveryType;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    const-string v0, ""

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_6

    .line 90
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    if-eqz p6, :cond_1

    .line 93
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can only specify up to 5 content discovery sources."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mAsin:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mLengthOfBook:J

    if-nez p3, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_1
    iput p1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mNarrationSpeed:F

    if-nez p4, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_2
    iput-boolean p1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mPlayingImmersionReading:Z

    if-nez p5, :cond_4

    .line 101
    sget-object p5, Lcom/audible/application/stats/integration/StatsMediaItem;->DEFAULT_DELIVERY_TYPE:Lcom/audible/application/stats/integration/DeliveryType;

    :cond_4
    iput-object p5, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mDeliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    if-nez p6, :cond_5

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_5
    iput-object p6, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mContentDiscoverySources:Ljava/util/List;

    .line 103
    iput-object p7, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mSubscriptionId:Ljava/lang/String;

    return-void

    .line 91
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of Book cannot be null or less than or equal to 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ASIN cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 145
    :cond_0
    instance-of v1, p1, Lcom/audible/application/stats/integration/StatsMediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 147
    :cond_1
    check-cast p1, Lcom/audible/application/stats/integration/StatsMediaItem;

    .line 149
    iget-wide v3, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mLengthOfBook:J

    iget-wide v5, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mLengthOfBook:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 150
    :cond_2
    iget v1, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mNarrationSpeed:F

    iget v3, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mNarrationSpeed:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 151
    :cond_3
    iget-boolean v1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mPlayingImmersionReading:Z

    iget-boolean v3, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mPlayingImmersionReading:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mAsin:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mAsin:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mAsin:Ljava/lang/String;

    if-eqz v1, :cond_6

    :goto_0
    return v2

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mSubscriptionId:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mSubscriptionId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_7
    iget-object v1, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mSubscriptionId:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_1
    return v2

    .line 155
    :cond_8
    iget-object v1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mDeliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    iget-object v3, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mDeliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    if-eq v1, v3, :cond_9

    return v2

    .line 156
    :cond_9
    iget-object v1, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mContentDiscoverySources:Ljava/util/List;

    iget-object p1, p1, Lcom/audible/application/stats/integration/StatsMediaItem;->mContentDiscoverySources:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_a
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v0, 0x0

    :cond_c
    :goto_3
    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDiscoverySources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mContentDiscoverySources:Ljava/util/List;

    return-object v0
.end method

.method public getDeliveryType()Lcom/audible/application/stats/integration/DeliveryType;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mDeliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    return-object v0
.end method

.method public getLengthOfBook()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mLengthOfBook:J

    return-wide v0
.end method

.method public getNarrationSpeed()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mNarrationSpeed:F

    return v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mAsin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 164
    iget-wide v2, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mLengthOfBook:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 165
    iget v2, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mNarrationSpeed:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 166
    iget-boolean v2, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mPlayingImmersionReading:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget-object v2, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mDeliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 168
    iget-object v2, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mSubscriptionId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object v2, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mContentDiscoverySources:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isPlayingImmersionReading()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/audible/application/stats/integration/StatsMediaItem;->mPlayingImmersionReading:Z

    return v0
.end method
