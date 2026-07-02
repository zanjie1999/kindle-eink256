.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;
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
    name = "NextPageUpdatedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderElementInvalidated(I)V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

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

    .line 356
    invoke-interface {v2, p1, v3}, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;->nextPageUpdated(IZ)V

    goto :goto_0

    .line 358
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
    .locals 4

    .line 343
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageRenderDrawableArray - NextPageUpdatedListener - onNextPage reader. pageId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;

    if-nez p2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 347
    :goto_1
    invoke-interface {v2, p1, v3}, Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;->nextPageUpdated(IZ)V

    goto :goto_0

    .line 349
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
