.class public Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModelBuilder;
.super Ljava/lang/Object;
.source "AuthorBioListModelBuilder.java"


# direct methods
.method public static build(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;
    .locals 9

    .line 17
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 20
    new-instance v0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->title:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method
