.class public Lcom/amazon/android/widget/items/BookSearchWidgetSelectionItem;
.super Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;
.source "BookSearchWidgetSelectionItem.java"


# instance fields
.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V
    .locals 2

    .line 23
    sget v0, Lcom/amazon/kindle/krl/R$string;->selection_search_book:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;-><init>(ILjava/lang/Integer;I)V

    .line 24
    iput-object p1, p0, Lcom/amazon/android/widget/items/BookSearchWidgetSelectionItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "BookSearch"

    return-object v0
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->isAnyTextSelected(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/BookSearchWidgetSelectionItem;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/amazon/android/widget/items/BookSearchWidgetSelectionItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->searchInDocument()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
