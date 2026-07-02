.class Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;
.super Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineCallback;
.source "DownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleDownload"
.end annotation


# instance fields
.field private mHasCompleted:Z

.field private final mLock:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;->this$0:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineCallback;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;->mLock:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onItemDownloadResult(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;->DownloadResultTypeSuccess:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadResultType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "DownloadAction: The delegate was unable to download item. Check delegate logs"

    .line 27
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;->mLock:[Ljava/lang/Object;

    monitor-enter p1

    .line 33
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;->mHasCompleted:Z

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;->mHasCompleted:Z

    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 39
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;->this$0:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;

    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->access$000(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
