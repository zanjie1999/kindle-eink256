.class Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;)V
    .locals 0

    .line 2830
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2832
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->access$400(Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;)Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
