.class final Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;
.super Ljava/lang/Object;
.source "DownloadRequestGroup.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportGroupStatus(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $groupStatus:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field final synthetic this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    iput-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;->$groupStatus:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;->$groupStatus:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->access$reportGroupStatusImpl(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    return-void
.end method
