.class Lcom/amazon/android/docviewer/pdf/PdfDocViewer$1;
.super Ljava/lang/Object;
.source "PdfDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToPosition(I)V
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

    .line 467
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 470
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ACX_GOTO:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->access$000(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->endChromeFirePerf(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    return-void
.end method
