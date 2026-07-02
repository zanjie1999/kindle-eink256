.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->navigateToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field final synthetic val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GOTO_PAGE_STARTING_WITH:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 530
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$2500(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->gotoPageStartingWith(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 531
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GOTO_PAGE_STARTING_WITH:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 532
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$2600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->update(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    .line 533
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    .line 535
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$20;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    :cond_0
    return-void
.end method
