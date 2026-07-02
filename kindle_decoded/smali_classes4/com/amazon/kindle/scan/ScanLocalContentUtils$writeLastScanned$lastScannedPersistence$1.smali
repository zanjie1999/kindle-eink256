.class final Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;
.super Ljava/lang/Object;
.source "ScanLocalContentUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/scan/ScanLocalContentUtils;->writeLastScanned(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "ScanLocalContentUtils lastScannedPersistence"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 282
    :try_start_0
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 283
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {v4}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->access$getLastScannedFile$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 286
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {v4}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->access$getTAG$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error persisting last scanned time."

    invoke-static {v4, v5, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :goto_1
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    iget-object v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->access$getLastScanPersistenceScheduled$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    :catchall_1
    move-exception v2

    .line 288
    :goto_2
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    iget-object v3, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {v3}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->access$getLastScanPersistenceScheduled$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    throw v2
.end method
