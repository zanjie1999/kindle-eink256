.class public Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModelBuilder;
.super Ljava/lang/Object;
.source "GrokRatingAndReviewModelBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.model.widget.ratingandreview.GrokRatingAndReviewModelBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static build(Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;
    .locals 20

    move-object/from16 v0, p0

    .line 22
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 23
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModelBuilder;->TAG:Ljava/lang/String;

    const-string v1, "GrokRatingAndReviewModel invalidated; isSocialNetworkBlocked was true."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 29
    :cond_1
    invoke-static {}, Lcom/amazon/ea/util/ConfigurationUtil;->isGrokRatingAndReviewWidgetEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 30
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModelBuilder;->TAG:Ljava/lang/String;

    const-string v1, "GrokRatingAndReviewModel invalidated; isGrokRatingAndReviewWidgetEnabled was false."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 36
    :cond_3
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 38
    invoke-interface {v11}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 45
    :cond_4
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    move-object v3, v2

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->customerProfile:Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->personalizationRating:Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;

    iget-object v8, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->publicSharedRating:Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;

    iget-object v9, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->communityReview:Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;

    iget-object v10, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    .line 48
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->sidecarCreationTimestamp:J

    iget-object v15, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    iget-boolean v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->showShareComponent:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareTitle:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->shareButtonText:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;JLcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 39
    :cond_5
    :goto_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModelBuilder;->TAG:Ljava/lang/String;

    const-string v1, "GrokRatingAndReviewModel invalidated; current book is not valid kindle book."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method
