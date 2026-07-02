.class Lcom/amazon/android/docviewer/pdf/PdfDoc$4;
.super Ljava/lang/Object;
.source "PdfDoc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDoc;->incrementDocumentReloadTrigger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 948
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$300(Lcom/amazon/android/docviewer/pdf/PdfDoc;)I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 949
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incrementDocumentReloadTrigger.Runnable: only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$300(Lcom/amazon/android/docviewer/pdf/PdfDoc;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extant pageLoads; returning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 952
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$400(Lcom/amazon/android/docviewer/pdf/PdfDoc;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 954
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$200()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incrementDocumentReloadTrigger.Runnable: interval is only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; not reloading"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 956
    :cond_1
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$200()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incrementDocumentReloadTrigger.Runnable: interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; RELOADING document"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$4;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->reloadDocHandle()V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 960
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incrementDocumentReloadTrigger.Runnable: could not reloadDocHandle()"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
