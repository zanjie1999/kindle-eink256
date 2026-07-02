.class Lcom/amazon/kcp/library/DeleteCollectionDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteCollectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "Collections"

    const-string v0, "DeleteCollection"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "LibraryActivity"

    const-string v1, "CollectionDeletedViaContextMenu"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;->deleteCollections()V

    return-void
.end method
