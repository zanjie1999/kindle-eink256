.class Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;
.super Ljava/lang/Object;
.source "PdfDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->loadAnnotations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->access$100(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readAnnotations()V

    .line 659
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2$1;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
