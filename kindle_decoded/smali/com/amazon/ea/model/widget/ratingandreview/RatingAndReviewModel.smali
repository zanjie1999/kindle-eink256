.class public Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "RatingAndReviewModel.java"


# static fields
.field private static final SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bookItem:Lcom/amazon/kindle/krx/content/IBook;

.field public final communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

.field public final customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

.field public final goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

.field public final personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

.field public final preferredMarketplace:Ljava/lang/String;

.field public final publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

.field public final ratingOnlyExperience:Z

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final shareButtonText:Ljava/lang/String;

.field public final shareTitle:Ljava/lang/String;

.field public final showShareComponent:Z

.field public final sidecarCreationTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 27
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p3

    .line 91
    iput-boolean v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->preferredMarketplace:Ljava/lang/String;

    move-wide v1, p11

    .line 99
    iput-wide v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    move/from16 v1, p13

    .line 100
    iput-boolean v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->showShareComponent:Z

    move-object/from16 v1, p14

    .line 101
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareButtonText:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 103
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->refTagFeatureIdPartial:Ljava/lang/String;

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

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 117
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    .line 118
    invoke-super {p0, p1}, Lcom/amazon/ea/model/widget/WidgetModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    .line 119
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    .line 120
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    .line 121
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    .line 122
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->preferredMarketplace:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->preferredMarketplace:Ljava/lang/String;

    .line 123
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    iget-wide v5, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->showShareComponent:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->showShareComponent:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    .line 126
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareButtonText:Ljava/lang/String;

    .line 127
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 128
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

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->preferredMarketplace:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->showShareComponent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareButtonText:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 133
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initMetricConstants()V
    .locals 6

    .line 140
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {p0}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v1

    const-string v2, "LinkedToGrok"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 141
    invoke-static {p0}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "PublishedReview"

    invoke-virtual {v1, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 143
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "CreateReview"

    invoke-virtual {v1, v2, v4}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_2

    .line 145
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedPublishedReview"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_2

    .line 147
    :cond_2
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "SubmittedRating"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClearedRating"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "SubmittedPublicName"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 150
    iget-boolean v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-nez v0, :cond_3

    .line 151
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedCreateReview"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "SubmittedReview"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 4

    .line 164
    invoke-super {p0}, Lcom/amazon/ea/model/widget/WidgetModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    const-string/jumbo v2, "ratingOnlyExperience"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const-string v2, "customerProfile"

    .line 165
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    const-string/jumbo v2, "personalizationRating"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    const-string/jumbo v2, "publicSharedRating"

    .line 166
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const-string v2, "communityReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    const-string v2, "goodreadsShelfData"

    .line 167
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    const-string v2, "bookItem"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->preferredMarketplace:Ljava/lang/String;

    const-string/jumbo v2, "preferredMarketplace"

    .line 168
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    const-string/jumbo v3, "sidecarCreationTimestamp"

    .line 169
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->showShareComponent:Z

    const-string/jumbo v2, "showShareComponent"

    .line 170
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    const-string/jumbo v2, "shareTitle"

    .line 171
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareButtonText:Ljava/lang/String;

    const-string/jumbo v2, "shareButtonText"

    .line 172
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    .line 173
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
