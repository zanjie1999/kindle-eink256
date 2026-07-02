.class public final Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;
.super Ljava/lang/Object;
.source "RatingAndReviewingModelBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;-><init>()V

    return-void
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-static {}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build(Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "def"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v2, "EndActionsPlugin.sdk"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    const-string v3, "EndActionsPlugin.sdk.readerManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v1

    const-string v3, "EndActionsPlugin.sdk.rea\u2026anager.restrictionHandler"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RatingAndReviewingModel invalidated; isSocialNetworkBlocked was true."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v3

    .line 22
    :cond_1
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    const-string/jumbo v4, "readerManager"

    .line 23
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 24
    invoke-interface {v13}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v3, "def.id"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "def.metricsTag"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getCustomerProfile()Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getPublicSharedRating()Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    move-result-object v10

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getCommunityReview()Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getGoodReadsReview()Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    move-result-object v12

    const-string v3, "applicationManager"

    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    const-string v3, "applicationManager.activeUserAccount"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v14

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getSidecarCreationTimestamp()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v17

    move-object v5, v2

    .line 32
    invoke-direct/range {v5 .. v17}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;JLjava/lang/String;)V

    return-object v2

    .line 25
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RatingAndReviewingModel invalidated; current book is not valid kindle book."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method
