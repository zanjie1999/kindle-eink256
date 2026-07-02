.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->bound(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;

.field final synthetic val$binder:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;->this$2:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;

    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;->val$binder:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;->this$2:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;

    iget-object v0, v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v0, v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->val$playerServiceCommand:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;->val$binder:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;->execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V

    return-void
.end method
