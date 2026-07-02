.class public final Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "RatingAndReviewingModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;

.field private static final SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bookItem:Lcom/amazon/kindle/krx/content/IBook;

.field private final communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

.field private final customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

.field private final goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

.field private final preferredMarketplace:Ljava/lang/String;

.field private final publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

.field private final refTagFeatureIdPartial:Ljava/lang/String;

.field private final sidecarCreationTimestamp:J

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->Companion:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 57
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "metricsTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookItem"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iput-object p5, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    iput-object p6, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iput-object p7, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iput-object p8, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p9, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->preferredMarketplace:Ljava/lang/String;

    iput-wide p10, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->sidecarCreationTimestamp:J

    iput-object p12, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->refTagFeatureIdPartial:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_DISPLAY_FORMATS$cp()Ljava/util/HashSet;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;

    return-object v0
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

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 70
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    .line 71
    invoke-super {p0, p1}, Lcom/amazon/ea/model/widget/WidgetModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->title:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->preferredMarketplace:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->preferredMarketplace:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->sidecarCreationTimestamp:J

    iget-wide v5, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->sidecarCreationTimestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBookItem()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public final getCommunityReview()Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    return-object v0
.end method

.method public final getCustomerProfile()Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    return-object v0
.end method

.method public final getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    return-object v0
.end method

.method public final getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->preferredMarketplace:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicSharedRating()Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    return-object v0
.end method

.method public final getSidecarCreationTimestamp()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->sidecarCreationTimestamp:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 83
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->preferredMarketplace:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 84
    iget-wide v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->sidecarCreationTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 82
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initMetricConstants()V
    .locals 6

    .line 88
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-object v1, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v1

    const-string v2, "LinkedToGrok"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 89
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    .line 90
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

    .line 91
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "CreateReview"

    invoke-virtual {v1, v2, v4}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedPublishedReview"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_2

    .line 95
    :cond_2
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "SubmittedRating"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClearedRating"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "SubmittedPublicName"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedCreateReview"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "SubmittedReview"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "formats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->Companion:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;

    invoke-static {v0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;->access$getSUPPORTED_DISPLAY_FORMATS$p(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel$Companion;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 4

    .line 104
    invoke-super {p0}, Lcom/amazon/ea/model/widget/WidgetModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 106
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    const-string v2, "customerProfile"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 107
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    const-string/jumbo v2, "publicSharedRating"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 108
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    const-string v2, "communityReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 109
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->goodReadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    const-string v2, "goodReadsReview"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 110
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    const-string v2, "bookItem"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 111
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->preferredMarketplace:Ljava/lang/String;

    const-string/jumbo v2, "preferredMarketplace"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 112
    iget-wide v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->sidecarCreationTimestamp:J

    const-string/jumbo v3, "sidecarCreationTimestamp"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 113
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    const-string/jumbo v1, "super.toStringHelper()\n \u2026, refTagFeatureIdPartial)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
