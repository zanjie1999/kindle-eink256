.class Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2$1;
.super Ljava/lang/Object;
.source "PdfDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2$1;->this$1:Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2$1;->this$1:Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->access$202(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 662
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2$1;->this$1:Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->access$300(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V

    return-void
.end method
