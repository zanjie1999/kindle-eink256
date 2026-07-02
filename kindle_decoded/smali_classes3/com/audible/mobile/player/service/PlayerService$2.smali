.class Lcom/audible/mobile/player/service/PlayerService$2;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/PlayerService;->getSynchronousPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/PlayerService;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$snapshot:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/PlayerService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$2;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService$2;->val$snapshot:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/audible/mobile/player/service/PlayerService$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$2;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 1074
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$2;->val$snapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1075
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
