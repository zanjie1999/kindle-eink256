.class public Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;
.super Ljava/lang/Object;
.source "ThumbnailServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$IncomingMessageHandler;,
        Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;,
        Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;
    }
.end annotation


# instance fields
.field private isServiceBound:Z

.field private isServiceStarting:Z

.field private parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

.field private pendingThumbnailRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final thumbnailIncomingMessenger:Landroid/os/Messenger;

.field private thumbnailOutgoingMessenger:Landroid/os/Messenger;

.field private thumbnailServiceConnection:Landroid/content/ServiceConnection;

.field private validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

.field private visibleThumbnailComparator:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceBound:Z

    .line 112
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceStarting:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->pendingThumbnailRequests:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->visibleThumbnailComparator:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;

    .line 148
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailServiceConnection:Landroid/content/ServiceConnection;

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    .line 124
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$IncomingMessageHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$IncomingMessageHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailIncomingMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Landroid/os/Messenger;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailOutgoingMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailOutgoingMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceBound:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceBound:Z

    return p1
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceStarting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendPendingRequests()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Landroid/content/ServiceConnection;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->writeValidPageRange()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/MappedIntArray;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    return-object p0
.end method

.method private declared-synchronized addThumbnailRequest(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;)V
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->pendingThumbnailRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized sendPendingRequests()V
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->pendingThumbnailRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;

    .line 229
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->pendingThumbnailRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAndBindThumbnailService(Landroid/content/Context;)V
    .locals 3

    .line 235
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceStarting:Z

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/reader/ui/ThumbnailService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceStarting:Z

    :cond_0
    return-void
.end method

.method private writeValidPageRange()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getValidPageRange()[I

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/MappedIntArray;->put([I)V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeValidPages: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailScrubber"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method requestBitmap(IILjava/lang/String;II)V
    .locals 9

    .line 182
    new-instance v8, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;IIILjava/lang/String;II)V

    .line 213
    invoke-direct {p0, v8}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->addThumbnailRequest(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailOutgoingMessenger:Landroid/os/Messenger;

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->startAndBindThumbnailService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public requestCacheWarming(IILjava/lang/String;II)V
    .locals 9

    .line 299
    new-instance v8, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;IIILjava/lang/String;II)V

    .line 321
    invoke-direct {p0, v8}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->addThumbnailRequest(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;)V

    return-void
.end method

.method requestDocumentOpen()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "page_range.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    :try_start_0
    new-instance v1, Lcom/amazon/kcp/reader/ui/MappedIntArray;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/reader/ui/MappedIntArray;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create mapped file. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailScrubber"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;I)V

    .line 285
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->addThumbnailRequest(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;)V

    return-void
.end method

.method public declared-synchronized sendCenterSortedPendingRequests(I)V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailOutgoingMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->pendingThumbnailRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->visibleThumbnailComparator:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;->setCenterPage(I)V

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->pendingThumbnailRequests:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->visibleThumbnailComparator:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$VisibleThumbnailComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendPendingRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shutdown()V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->unbind()V

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/reader/ui/ThumbnailService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MappedIntArray;->close()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->validPageRange:Lcom/amazon/kcp/reader/ui/MappedIntArray;

    :cond_1
    return-void
.end method

.method public unbind()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceBound:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->parent:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->isServiceBound:Z

    :cond_0
    return-void
.end method
