.class public Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;
.source "WebSearchWidgetSelectionItem.java"


# instance fields
.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private usesBiaduForWebSearch:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 32
    sget v0, Lcom/amazon/kindle/krl/R$string;->selection_search_baidu:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->selection_search_web:I

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;-><init>(ILjava/lang/Integer;I)V

    .line 33
    iput-object p1, p0, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 34
    iput-boolean p3, p0, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;->usesBiaduForWebSearch:Z

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "WebSearch"

    return-object v0
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->isAnyTextSelected(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;->usesBiaduForWebSearch:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->searchInWikipedia()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->searchInBrowser()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
