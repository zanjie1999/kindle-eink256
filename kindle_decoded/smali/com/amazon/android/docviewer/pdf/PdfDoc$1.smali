.class Lcom/amazon/android/docviewer/pdf/PdfDoc$1;
.super Ljava/lang/Object;
.source "PdfDoc.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDoc;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/android/docviewer/IKindleTOC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$000(Lcom/amazon/android/docviewer/pdf/PdfDoc;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$100(Lcom/amazon/android/docviewer/pdf/PdfDoc;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/android/docviewer/pdf/PdfDoc$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$1$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc$1;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;->call()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    return-object v0
.end method
