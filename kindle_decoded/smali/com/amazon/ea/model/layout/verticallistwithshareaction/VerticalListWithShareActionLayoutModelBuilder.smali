.class public Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModelBuilder;
.super Ljava/lang/Object;
.source "VerticalListWithShareActionLayoutModelBuilder.java"


# direct methods
.method public static build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithShareActionLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithShareActionLayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;"
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->getWidgetModels(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->canGetValidVerticalListLayoutModel(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
