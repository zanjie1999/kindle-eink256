.class public Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;
.super Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;
.source "GridObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridSelectionPageTurnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;


# direct methods
.method protected constructor <init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V

    return-void
.end method


# virtual methods
.method public onDocViewerRefresh()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->access$000(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->selectNone()V

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->onDocViewerRefresh()V

    return-void
.end method
