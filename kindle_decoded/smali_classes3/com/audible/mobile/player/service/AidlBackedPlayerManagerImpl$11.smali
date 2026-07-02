.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;I)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    iput p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$000(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 489
    iget v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;->val$position:I

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->seekTo(I)V

    return-void
.end method
