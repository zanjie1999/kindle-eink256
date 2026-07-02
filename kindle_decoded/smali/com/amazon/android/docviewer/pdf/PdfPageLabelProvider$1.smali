.class Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;
.super Ljava/lang/Object;
.source "PdfPageLabelProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->preloadPageLabels(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

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

    .line 289
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->call()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->access$000(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->access$000(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    :try_start_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->access$100(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelNative;->getAllPageLabels(J)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->access$000(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 296
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->access$000(Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;)Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 299
    throw v0
.end method
