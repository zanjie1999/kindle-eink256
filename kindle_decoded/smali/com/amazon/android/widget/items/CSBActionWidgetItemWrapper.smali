.class public Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "CSBActionWidgetItemWrapper.java"

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
.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 33
    iput-object p2, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v0, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->getPriority(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v0, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v0, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

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

    .line 19
    check-cast p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->wrappedButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v0, p0, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    const/4 p1, 0x1

    return p1
.end method
