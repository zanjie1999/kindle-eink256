.class Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "DragToSelectWidgetItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragToSelectWidgetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field private objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private final priority:I


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 44
    iput p2, p0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->priority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;ILcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "DragToSelect"

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 55
    iget p1, p0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;
    .locals 0

    .line 50
    sget p2, Lcom/amazon/kindle/krl/R$string;->graphical_highlight_drag_to_select_text:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 36
    check-cast p2, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    instance-of p1, p1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    if-eqz p1, :cond_1

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider$DragToSelectWidgetItem;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method
