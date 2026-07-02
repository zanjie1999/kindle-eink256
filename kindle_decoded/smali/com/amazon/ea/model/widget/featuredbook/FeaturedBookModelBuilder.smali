.class public Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModelBuilder;
.super Ljava/lang/Object;
.source "FeaturedBookModelBuilder.java"


# direct methods
.method public static build(Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;
    .locals 13

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonVisible:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 24
    :goto_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height_large:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 27
    new-instance v0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v6, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonText:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyInStore:Z

    iget-boolean v11, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->oneClickBorrowSupported:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZI)V

    return-object v0
.end method
