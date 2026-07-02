.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;
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


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "KRF navigate to LPR(no tag stack)"

    .line 697
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 699
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GOTO_PAGE_STARTING_WITH:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v2, v3, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 700
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$krfPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->gotoPageStartingWith(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 701
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GOTO_PAGE_STARTING_WITH:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 702
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    .line 704
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$29;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->onAfterNavigation(I)V

    .line 709
    :cond_1
    :goto_0
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
