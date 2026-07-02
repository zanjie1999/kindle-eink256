.class public Lcom/amazon/ea/model/widget/buybook/BuyBookModelBuilder;
.super Ljava/lang/Object;
.source "BuyBookModelBuilder.java"


# direct methods
.method public static build(Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 25
    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v1}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->buyButtonVisible:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v1}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 31
    iget-boolean v2, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->isCurrentBook:Z

    if-eqz v2, :cond_2

    .line 32
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 34
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->splitCatalogAuthors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 37
    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 38
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;->MEDIUM:Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;

    invoke-interface {v5, v2, v6}, Lcom/amazon/kindle/krx/cover/ICoverManager;->getCoverFilePath(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/amazon/ea/util/StyleCodeUtil;->localFilePathAsURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v5, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    invoke-direct {v5, v1, v3, v2, v4}, Lcom/amazon/ea/sidecar/def/data/RecommendationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v6, v5

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    if-nez v6, :cond_3

    return-object v0

    .line 47
    :cond_3
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 50
    new-instance v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->title:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->buyButtonText:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->buyInStore:Z

    iget-boolean v12, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->oneClickBorrowSupported:Z

    iget-boolean v14, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->isCurrentBook:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/RecommendationData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    :cond_4
    :goto_2
    return-object v0
.end method
