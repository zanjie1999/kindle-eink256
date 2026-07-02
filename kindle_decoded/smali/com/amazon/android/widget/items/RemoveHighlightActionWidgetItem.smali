.class public Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "RemoveHighlightActionWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/widget/AbstractActionWidgetItem;",
        "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
        "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
        ">;"
    }
.end annotation


# instance fields
.field private drawableColor:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field private highlightDrawable:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private priority:I


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 39
    iput p2, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->priority:I

    return-void
.end method

.method private getCurrentHighlightColor(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
    .locals 1

    .line 127
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 129
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColorHighlightProperties(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->getCurrentHighlightColor(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 81
    :cond_0
    sget-object v1, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem$1;->$SwitchMap$com$amazon$kcp$reader$notebook$ColorHighlightProperties:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const-string v0, "RemoveUnknownColorHighlight"

    return-object v0

    :cond_1
    const-string v0, "RemoveOrangeHighlight"

    return-object v0

    :cond_2
    const-string v0, "RemovePinkHighlight"

    return-object v0

    :cond_3
    const-string v0, "RemoveBlueHighlight"

    return-object v0

    :cond_4
    const-string v0, "RemoveYellowHighlight"

    return-object v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->getCurrentHighlightColor(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->highlightDrawable:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->drawableColor:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    if-eq v1, v0, :cond_2

    .line 105
    :cond_1
    new-instance v1, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorHexForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->highlightDrawable:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    const/4 p1, 0x1

    .line 106
    invoke-virtual {v1, p1}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->setDeleteButton(Z)V

    .line 107
    iput-object v0, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->drawableColor:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->highlightDrawable:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 0

    .line 115
    iget p1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->getCurrentHighlightColor(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getDeleteTextResId()I

    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->getCurrentHighlightColor(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;->getCurrentHighlightColor(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    :cond_1
    const/4 v1, 0x1

    .line 55
    invoke-interface {p1, v0, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V

    return v1
.end method
