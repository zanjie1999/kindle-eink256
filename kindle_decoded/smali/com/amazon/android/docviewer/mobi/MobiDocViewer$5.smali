.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->loadAnnotations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 2071
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2071
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 2073
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$300(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readAnnotations()V

    .line 2074
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$500(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->createPageLabels()Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;-><init>(Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;)V

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$402(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;)Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    .line 2075
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;)V

    .line 2082
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 2083
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$700(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 v0, 0x0

    return-object v0
.end method
