.class public Lcom/amazon/ea/reviews/ReviewsLogicManager;
.super Ljava/lang/Object;
.source "ReviewsLogicManager.java"


# static fields
.field private static final STORED_DATA_VALID_TIME_MS:J = 0x124f80L


# direct methods
.method public static getLastSubmittedPublicName(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Ljava/lang/String;
    .locals 8

    .line 38
    invoke-static {}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->getPublicNameTimeStamp()Ljava/util/Date;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->getPublicName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    iget-wide v2, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    .line 43
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    return-object v1

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLastSubmittedRating(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)I
    .locals 6

    const-string v0, "RatingSourcePublicSharedRating"

    const-string v1, "RatingSourceStored"

    const-string v2, "AnyActionsRatingWidget"

    const-string v3, "GetLastSubmittedRating"

    .line 61
    invoke-static {v3}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 62
    invoke-static {v3}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v5, "MetricsTag"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    .line 66
    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v4, v5}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->getReview(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 69
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 70
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v4}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return p0

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    if-eqz v1, :cond_1

    .line 74
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 75
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    iget p0, p0, Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;->rating:I

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    if-eqz v0, :cond_2

    const-string v0, "RatingSourceGoodReads"

    .line 79
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    const-string v0, "RatingSourceGoodreadsRating"

    .line 80
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    check-cast p0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iget p0, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->rating:I

    goto :goto_0

    :cond_2
    const-string p0, "RatingSourceNoneFound"

    .line 84
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 87
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 90
    throw p0
.end method

.method public static getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Lcom/amazon/ea/reviews/data/Review;
    .locals 7

    const-string v0, "GetLastSubmittedReview"

    .line 104
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    .line 107
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->getReview(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v0, "PublishedReviewSourceAmazon"

    .line 111
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "PublishedReviewSourceBothExist"

    .line 117
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    invoke-static {v0, p0}, Lcom/amazon/ea/reviews/data/Review;->createFromSidecarCommunityReview(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 121
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v0, "PublishedReviewSourceGoodreads"

    .line 124
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    iget-object p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    invoke-static {v0, p0}, Lcom/amazon/ea/reviews/data/Review;->createFromSidecarGrokReview(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 128
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getReviewState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->sidecarCreationTimestamp:J

    .line 129
    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getTimeStamp()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x124f80

    add-long/2addr v3, v5

    cmp-long p0, v1, v3

    if-gez p0, :cond_3

    const-string p0, "PublishedReviewSourceStored"

    .line 130
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 137
    throw p0
.end method

.method public static getOptInPublicName(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Ljava/lang/String;
    .locals 1

    .line 148
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    iget-boolean p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-eqz p0, :cond_0

    .line 154
    sget p0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_amazon_customer:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_0
    sget p0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_kindle_customer:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z
    .locals 1

    .line 169
    instance-of p0, p0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
