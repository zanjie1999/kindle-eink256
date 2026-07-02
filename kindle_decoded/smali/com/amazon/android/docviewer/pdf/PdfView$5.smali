.class Lcom/amazon/android/docviewer/pdf/PdfView$5;
.super Ljava/lang/Object;
.source "PdfView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfView;->lazyloadAccessiblePageSwipePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfView;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$5;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1391
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$900()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1393
    :try_start_0
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    .line 1394
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$5;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$raw;->accessible_page_swipe:I

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$902(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    :goto_0
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$1000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1396
    :try_start_1
    sget-object v2, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in creating accessible page swipe player"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1398
    :goto_1
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$1000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1399
    throw v1

    .line 1401
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    :goto_2
    return-void
.end method
