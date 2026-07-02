.class Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "PdfRendererImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/os/Looper;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    .line 340
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    .line 365
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;->onPostAllTilesRendered()V

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;

    .line 353
    iget-object v0, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->callback:Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;->tileRendered(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V

    :goto_0
    return-void
.end method
