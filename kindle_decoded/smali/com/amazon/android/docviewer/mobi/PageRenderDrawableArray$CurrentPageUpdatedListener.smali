.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;
.super Ljava/lang/Object;
.source "PageRenderDrawableArray.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrentPageUpdatedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderElementInvalidated(I)V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;

    const/4 v3, 0x0

    .line 334
    invoke-interface {v2, p1, v3}, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;->currentPageUpdated(IZ)V

    goto :goto_0

    .line 336
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRenderElementReady(IZ)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "CurrentPageUpdatedListener.onRenderElementReady"

    .line 309
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 310
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$000()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageRenderDrawableArray - CurrentPageUpdatedListener - onCurrentPage reader. pageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    iget-object v1, v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead()V

    .line 319
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;

    if-nez p2, :cond_0

    const/4 v4, 0x1

    .line 321
    :cond_0
    invoke-interface {v3, p1, v4}, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;->currentPageUpdated(IZ)V

    goto :goto_0

    .line 323
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->handleDocViewerRefresh()V

    const-string p1, "CurrentPageUpdatedListener.onRenderElementReady"

    .line 327
    invoke-static {p1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 323
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
