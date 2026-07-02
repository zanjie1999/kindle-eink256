.class public Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "RatingWidgetDef.java"


# instance fields
.field public final communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

.field public final customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

.field public final goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

.field public final personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

.field public final publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final shareButtonText:Ljava/lang/String;

.field public final shareTitle:Ljava/lang/String;

.field public final showShareComponent:Z

.field public final sidecarCreationTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    .line 66
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    .line 67
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    .line 68
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    .line 69
    iput-object p9, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    .line 70
    iput-wide p10, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->sidecarCreationTimestamp:J

    .line 71
    iput-boolean p12, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->showShareComponent:Z

    .line 72
    iput-object p13, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareTitle:Ljava/lang/String;

    .line 73
    iput-object p14, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareButtonText:Ljava/lang/String;

    .line 74
    iput-object p15, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 88
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;

    .line 89
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    .line 90
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    .line 91
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    .line 92
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->sidecarCreationTimestamp:J

    iget-wide v5, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->sidecarCreationTimestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->showShareComponent:Z

    iget-boolean v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->showShareComponent:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareTitle:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareTitle:Ljava/lang/String;

    .line 95
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareButtonText:Ljava/lang/String;

    .line 96
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 97
    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 102
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->sidecarCreationTimestamp:J

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->showShareComponent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareTitle:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareButtonText:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 102
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 4

    .line 109
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const-string v2, "customerProfile"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    const-string/jumbo v2, "personalizationRating"

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const-string v2, "communityReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const-string v2, "goodreadsShelfData"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->sidecarCreationTimestamp:J

    const-string/jumbo v3, "sidecarCreationTimestamp"

    .line 112
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->showShareComponent:Z

    const-string/jumbo v2, "showShareComponent"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareTitle:Ljava/lang/String;

    const-string/jumbo v2, "shareTitle"

    .line 114
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->shareButtonText:Ljava/lang/String;

    const-string/jumbo v2, "shareButtonText"

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    .line 116
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
