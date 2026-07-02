.class public final Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;
.super Ljava/lang/Object;
.source "ReviewsLogicManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReviewsLogicManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReviewsLogicManager.kt\ncom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion\n*L\n1#1,151:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastSubmittedPublicName(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)Ljava/lang/String;
    .locals 9

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->getPublicNameTimeStamp()Ljava/util/Date;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->getPublicName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getSidecarCreationTimestamp()J

    move-result-wide v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x124f80

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getCustomerProfile()Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getCustomerProfile()Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-result-object p1

    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method public final getLastSubmittedRating(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)I
    .locals 7

    const-string v0, "RatingSourcePublicSharedRating"

    const-string v1, "RatingSourceStored"

    const-string v2, "AnyActionsRatingWidget"

    const-string v3, "EndActionsPlugin.sdk"

    const-string v4, "model"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "GetLastSubmittedRating"

    .line 65
    invoke-static {v4}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 66
    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v4

    const-string/jumbo v5, "rsMetadata"

    .line 67
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v6, "MetricsTag"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v5, v6}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->getReview(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 73
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 74
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v5}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return p1

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getPublicSharedRating()Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 79
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getPublicSharedRating()Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-result-object p1

    iget p1, p1, Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;->rating:I

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "RatingSourceGoodReads"

    .line 83
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    const-string v0, "RatingSourceGoodreadsRating"

    .line 84
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object p1

    iget p1, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    goto :goto_0

    :cond_2
    const-string p1, "RatingSourceNoneFound"

    .line 88
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 91
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    throw p1
.end method

.method public final getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)Lcom/amazon/ea/reviews/data/Review;
    .locals 9

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GetLastSubmittedReview"

    .line 107
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->getReview(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getCommunityReview()Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "PublishedReviewSourceAmazon"

    .line 114
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "PublishedReviewSourceBothExist"

    .line 119
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getCommunityReview()Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/reviews/data/Review;->createFromSidecarCommunityReview(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p1

    .line 123
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v0, "PublishedReviewSourceGoodreads"

    .line 125
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object p1

    .line 126
    invoke-static {v0, p1}, Lcom/amazon/ea/reviews/data/Review;->createFromSidecarGrokReview(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 130
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getReviewState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getSidecarCreationTimestamp()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getTimeStamp()Ljava/util/Date;

    move-result-object p1

    const-string/jumbo v1, "storedReview.timeStamp"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x124f80

    add-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    const-string p1, "PublishedReviewSourceStored"

    .line 131
    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v0

    :cond_4
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    throw p1
.end method

.method public final getOptInPublicName()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_kindle_customer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resources.getString(R.st\u2026_reviews_kindle_customer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isGrokWidget()Z
    .locals 1

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable(Z)Z

    move-result v0

    return v0
.end method
