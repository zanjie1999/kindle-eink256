.class Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "ZoomWidgetItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/items/ZoomWidgetItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomWidgetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private final priority:I


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 42
    iput p2, p0, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->priority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;ILcom/amazon/android/widget/items/ZoomWidgetItemProvider$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageZoom"

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 57
    iget p1, p0, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;
    .locals 0

    .line 63
    sget p2, Lcom/amazon/kindle/krl/R$string;->annotation_image_zoom:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p2, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->isImageOnlySelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->showImageZoom()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider$ZoomWidgetItem;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method
