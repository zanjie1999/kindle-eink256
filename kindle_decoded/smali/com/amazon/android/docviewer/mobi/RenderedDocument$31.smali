.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;
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

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "Navigate to LPR task complete"

    .line 757
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 759
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {v0, v2, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionChanged(IZ)V

    .line 761
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiRefresh()V

    .line 762
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->clearBackHistory()V

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$31;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiNavigationFailed(I)V

    .line 766
    :goto_0
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
