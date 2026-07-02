.class Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "OTAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateStatusContentObserver"
.end annotation


# instance fields
.field private mLastReportedDownloadProgress:F

.field private mLastReportedManifestState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

.field private final mListener:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;

.field private final mLocker:[Ljava/lang/Object;

.field private final mManifest:Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

.field private final mUpdateCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTAController;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;)V
    .locals 1

    .line 161
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    .line 162
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$100(Lcom/amazon/whispersync/dcp/ota/OTAController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLocker:[Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    .line 157
    iput v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLastReportedDownloadProgress:F

    .line 158
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLastReportedManifestState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 163
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mManifest:Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 164
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mListener:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;

    .line 166
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$200(Lcom/amazon/whispersync/dcp/ota/OTAController;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    .line 167
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->onChange(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->onChangeImpl()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mListener:Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;

    return-object p0
.end method

.method private onChangeImpl()V
    .locals 5
    .annotation build Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "FE_FLOATING_POINT_EQUALITY"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLocker:[Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    monitor-exit v0

    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 214
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mManifest:Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    invoke-static {v1, v2, v3}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$500(Lcom/amazon/whispersync/dcp/ota/OTAController;Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;

    move-result-object v1

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->getState()Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v0

    .line 218
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->getDownloadProgress()F

    move-result v2

    .line 220
    iget v3, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLastReportedDownloadProgress:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLastReportedManifestState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    if-eq v0, v3, :cond_2

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$100(Lcom/amazon/whispersync/dcp/ota/OTAController;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;

    invoke-direct {v4, p0, v1}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$2;-><init>(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    iput v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLastReportedDownloadProgress:F

    .line 232
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLastReportedManifestState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 235
    :cond_2
    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Failed:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    if-eq v1, v0, :cond_3

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Deduped:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    if-eq v1, v0, :cond_3

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateState;->Complete:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    if-ne v1, v0, :cond_4

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->shutdown()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 177
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$400(Lcom/amazon/whispersync/dcp/ota/OTAController;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver$1;-><init>(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->shutdown()V

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->this$0:Lcom/amazon/whispersync/dcp/ota/OTAController;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->access$400(Lcom/amazon/whispersync/dcp/ota/OTAController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 194
    :cond_0
    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mLocker:[Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1, p0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
