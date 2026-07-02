.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field final synthetic val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

.field final synthetic val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$tagStack:[B


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;[BLcom/amazon/kindle/krf/KRF/Reader/Position;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$tagStack:[B

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "KRF navigate to LPR(tag stack)"

    .line 717
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 722
    :try_start_0
    new-instance v3, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$tagStack:[B

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$tagStack:[B

    array-length v5, v5

    int-to-long v5, v5

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;-><init>([BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 723
    :try_start_1
    new-instance v4, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {v4, v5, v3}, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 724
    :try_start_2
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v5}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-virtual {v5, v6, v4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->gotoPageContaining(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 725
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v6, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GOTO_PAGE_STARTING_WITH:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v2, v6, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 727
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v2

    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-virtual {v2, v6}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->gotoPageStartingWith(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 728
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GOTO_PAGE_STARTING_WITH:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0, v2, v5}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    .line 732
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0, v5}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$30;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v0, v5}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->onAfterNavigation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->delete()V

    .line 741
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->delete()V

    .line 745
    invoke-static {v1, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_1
    if-eqz v2, :cond_3

    .line 738
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;->delete()V

    :cond_3
    if-eqz v3, :cond_4

    .line 741
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->delete()V

    .line 743
    :cond_4
    throw v0
.end method
