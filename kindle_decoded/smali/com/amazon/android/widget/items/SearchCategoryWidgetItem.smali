.class public Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;
.super Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;
.source "SearchCategoryWidgetItem.java"


# instance fields
.field private highlightedPriority:I

.field private selectedPriority:I


# direct methods
.method public constructor <init>(Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Landroid/content/Context;)V
    .locals 6

    .line 29
    sget v1, Lcom/amazon/kindle/krl/R$string;->selection_search_category:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "SearchCategory"

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;-><init>(ILjava/lang/Integer;ILcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 31
    sget p2, Lcom/amazon/kindle/krl/R$integer;->widget_item_search_category_selected:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;->selectedPriority:I

    .line 32
    sget p2, Lcom/amazon/kindle/krl/R$integer;->widget_item_search_category_highlighted:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;->highlightedPriority:I

    return-void
.end method

.method private static isAHighlightSelection(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 1

    .line 46
    invoke-interface {p0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;->isAHighlightSelection(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;->highlightedPriority:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;->selectedPriority:I

    :goto_0
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method
