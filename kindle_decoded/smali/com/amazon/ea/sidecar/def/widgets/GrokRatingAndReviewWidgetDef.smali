.class public Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "GrokRatingAndReviewWidgetDef.java"


# instance fields
.field public final communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

.field public final customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

.field public final goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

.field public final goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

.field public final personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

.field public final publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final shareButtonText:Ljava/lang/String;

.field public final shareTitle:Ljava/lang/String;

.field public final showShareComponent:Z

.field public final sidecarCreationTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;JLcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, p5

    .line 69
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-object v1, p6

    .line 70
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    move-object v1, p7

    .line 71
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-object v1, p8

    .line 72
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-wide v1, p9

    .line 73
    iput-wide v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->sidecarCreationTimestamp:J

    move-object v1, p11

    .line 74
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-object v1, p12

    .line 75
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    move/from16 v1, p13

    .line 76
    iput-boolean v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->showShareComponent:Z

    move-object/from16 v1, p14

    .line 77
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareTitle:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 78
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareButtonText:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 79
    iput-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    const-class v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 94
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    .line 95
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    .line 96
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    .line 97
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->sidecarCreationTimestamp:J

    iget-wide v5, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->sidecarCreationTimestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    .line 99
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    .line 100
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->showShareComponent:Z

    iget-boolean v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->showShareComponent:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareTitle:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareTitle:Ljava/lang/String;

    .line 102
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareButtonText:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareButtonText:Ljava/lang/String;

    .line 103
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 104
    invoke-static {p1, v1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->sidecarCreationTimestamp:J

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->showShareComponent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareTitle:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareButtonText:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 4

    .line 116
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const-string v2, "customerProfile"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    const-string/jumbo v2, "personalizationRating"

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const-string v2, "communityReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->sidecarCreationTimestamp:J

    const-string/jumbo v3, "sidecarCreationTimestamp"

    .line 118
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    const-string v2, "goodreadsReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const-string v2, "goodreadsShelfData"

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->showShareComponent:Z

    const-string/jumbo v2, "showShareComponent"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareTitle:Ljava/lang/String;

    const-string/jumbo v2, "shareTitle"

    .line 121
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareButtonText:Ljava/lang/String;

    const-string/jumbo v2, "shareButtonText"

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
