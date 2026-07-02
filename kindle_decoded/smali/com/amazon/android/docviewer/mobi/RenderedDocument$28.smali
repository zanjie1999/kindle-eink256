.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;
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

.field final synthetic val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "KRF navigate to SRL"

    const/4 v1, 0x1

    .line 667
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 669
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->gotoStartReadingPage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 670
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    .line 672
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$28;->val$renderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->onAfterNavigation(I)V

    .line 677
    :cond_1
    :goto_0
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
