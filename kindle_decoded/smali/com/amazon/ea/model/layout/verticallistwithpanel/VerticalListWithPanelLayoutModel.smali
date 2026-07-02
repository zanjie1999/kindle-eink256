.class public Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;
.super Lcom/amazon/ea/model/layout/LayoutModel;
.source "VerticalListWithPanelLayoutModel.java"


# instance fields
.field public final bodyWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;"
        }
    .end annotation
.end field

.field public final panelWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/ea/model/layout/LayoutModel;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;

    if-eq v2, v3, :cond_2

    return v1

    .line 47
    :cond_2
    check-cast p1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;

    .line 48
    invoke-super {p0, p1}, Lcom/amazon/ea/model/layout/LayoutModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    .line 49
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidgetIdToRefTagPlacementId()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 55
    :goto_0
    iget-object v3, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 57
    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const-string v4, "b"

    invoke-static {v4, v2}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 62
    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-static {v3, v1}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v1, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public prepareData()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 78
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/WidgetModel;->prepareData()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 82
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/WidgetModel;->prepareData()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 93
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    const-string v2, "bodyWidgets"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    const-string/jumbo v2, "panelWidgets"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
