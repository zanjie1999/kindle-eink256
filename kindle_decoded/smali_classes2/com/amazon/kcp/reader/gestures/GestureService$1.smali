.class Lcom/amazon/kcp/reader/gestures/GestureService$1;
.super Ljava/lang/Object;
.source "GestureService.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/GestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/gestures/GestureService;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService$1;->this$0:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoteExecute(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService$1;->this$0:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService$1;->this$0:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->isFastHighlightingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 385
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 386
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_1

    .line 388
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService$1;->this$0:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService$1;->this$0:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService$1;->this$0:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 392
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNoteSelection(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    return-void
.end method
