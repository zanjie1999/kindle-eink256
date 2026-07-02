.class public final Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "RatingAndReviewingWidgetDef.kt"


# instance fields
.field private final communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

.field private final customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

.field private final goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

.field private final publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

.field private final refTagFeatureIdPartial:Ljava/lang/String;

.field private final sidecarCreationTimestamp:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;JLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iput-object p7, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    iput-object p8, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iput-object p9, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iput-wide p10, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->sidecarCreationTimestamp:J

    iput-object p12, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

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

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 58
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;

    .line 59
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->title:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->sidecarCreationTimestamp:J

    iget-wide v5, v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->sidecarCreationTimestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    .line 65
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCommunityReview()Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    return-object v0
.end method

.method public final getCustomerProfile()Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    return-object v0
.end method

.method public final getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    return-object v0
.end method

.method public final getPublicSharedRating()Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    return-object v0
.end method

.method public final getRefTagFeatureIdPartial()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    return-object v0
.end method

.method public final getSidecarCreationTimestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->sidecarCreationTimestamp:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 70
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->sidecarCreationTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 69
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 76
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const-string v2, "customerProfile"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 77
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const-string v2, "communityReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 78
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    const-string v2, "goodReadsReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 79
    iget-wide v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->sidecarCreationTimestamp:J

    const-string/jumbo v3, "sidecarCreationTimestamp"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 80
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    const-string/jumbo v1, "super.toStringHelper()\n \u2026, refTagFeatureIdPartial)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
