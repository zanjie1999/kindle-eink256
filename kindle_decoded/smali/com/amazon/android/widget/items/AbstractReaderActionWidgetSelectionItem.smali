.class public abstract Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "AbstractReaderActionWidgetSelectionItem.java"

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
.field private imageResource:Ljava/lang/Integer;

.field private priority:I

.field private textResource:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    .line 47
    iput p1, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->textResource:I

    .line 48
    iput-object p2, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->imageResource:Ljava/lang/Integer;

    .line 49
    iput p3, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->priority:I

    return-void
.end method

.method static isAnyTextSelected(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 2

    .line 84
    invoke-interface {p0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->isImageOnlySelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-interface {p0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v0, v1, :cond_0

    .line 88
    invoke-interface {p0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->imageResource:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->imageResource:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 0

    .line 69
    iget p1, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 64
    iget v0, p0, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->textResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method
