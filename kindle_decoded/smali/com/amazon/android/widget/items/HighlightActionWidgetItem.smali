.class public Lcom/amazon/android/widget/items/HighlightActionWidgetItem;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "HighlightActionWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/widget/AbstractActionWidgetItem;",
        "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
        "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
        ">;"
    }
.end annotation


# instance fields
.field private color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

.field private icon:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private priority:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 49
    iput-object p2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 50
    iput p3, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->priority:I

    return-void
.end method

.method private isDeleteHighlightButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 1

    .line 121
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$1;->$SwitchMap$com$amazon$kcp$reader$notebook$ColorHighlightProperties:[I

    iget-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "UnknownColorHighlight"

    return-object v0

    :cond_0
    const-string v0, "OrangeHighlight"

    return-object v0

    :cond_1
    const-string v0, "PinkHighlight"

    return-object v0

    :cond_2
    const-string v0, "BlueHighlight"

    return-object v0

    :cond_3
    const-string v0, "YellowHighlight"

    return-object v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->icon:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    iget-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorHexForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->icon:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->icon:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->isDeleteHighlightButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->setDeleteButton(Z)V

    .line 104
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->icon:Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 0

    .line 109
    iget p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->isDeleteHighlightButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getDeleteTextResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getChangeTextResId()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getCreateTextResId()I

    move-result v0

    .line 76
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 1

    .line 114
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->canHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
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

    .line 36
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->color:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    iget-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v1}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;->isDeleteHighlightButton(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V

    const/4 p1, 0x1

    return p1
.end method
