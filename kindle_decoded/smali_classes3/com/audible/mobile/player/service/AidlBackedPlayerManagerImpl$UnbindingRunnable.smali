.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnbindingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V
    .locals 0

    .line 822
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$400(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    .line 828
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2502(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 829
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
