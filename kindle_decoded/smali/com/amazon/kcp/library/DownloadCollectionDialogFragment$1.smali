.class Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;
.super Ljava/lang/Object;
.source "DownloadCollectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "Collections"

    const-string v0, "DownloadCollection"

    .line 90
    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    .line 94
    invoke-static {p2}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->access$000(Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "LibraryActivity"

    .line 93
    invoke-virtual {p1, v1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 96
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1$1;-><init>(Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
