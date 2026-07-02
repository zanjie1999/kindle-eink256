.class Lcom/amazon/kcp/reader/ReaderGestureDetector$1;
.super Ljava/lang/Object;
.source "ReaderGestureDetector.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoteExecute(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->access$000(Lcom/amazon/kcp/reader/ReaderGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 182
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    .line 183
    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->access$100(Lcom/amazon/kcp/reader/ReaderGestureDetector;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->access$100(Lcom/amazon/kcp/reader/ReaderGestureDetector;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->access$100(Lcom/amazon/kcp/reader/ReaderGestureDetector;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNoteSelection(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    return-void
.end method
