.class public Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;
.super Lcom/amazon/android/widget/AbstractCategoryWidgetItem;
.source "ReaderCategoryWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/widget/AbstractCategoryWidgetItem;",
        "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
        "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
        ">;"
    }
.end annotation


# instance fields
.field private buttonIdentifier:Ljava/lang/String;

.field private imageResource:Ljava/lang/Integer;

.field private priority:I

.field private textResource:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;ILcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p4}, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;-><init>(Lcom/amazon/android/widget/WidgetItemGroup;)V

    .line 49
    iput p1, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->textResource:I

    .line 50
    iput-object p2, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->imageResource:Ljava/lang/Integer;

    .line 51
    iput p3, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->priority:I

    .line 52
    iput-object p5, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->buttonIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->imageResource:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->imageResource:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 0

    .line 72
    iget p1, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->textResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;->widgetItemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    check-cast v0, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;

    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method
