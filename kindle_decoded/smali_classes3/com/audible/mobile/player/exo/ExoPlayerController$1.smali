.class Lcom/audible/mobile/player/exo/ExoPlayerController$1;
.super Ljava/lang/Object;
.source "ExoPlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/exo/ExoPlayerController;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/exo/ExoPlayerController;

.field final synthetic val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/exo/ExoPlayerController;Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController$1;->this$0:Lcom/audible/mobile/player/exo/ExoPlayerController;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/ExoPlayerController$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController$1;->this$0:Lcom/audible/mobile/player/exo/ExoPlayerController;

    invoke-static {v1}, Lcom/audible/mobile/player/exo/ExoPlayerController;->access$000(Lcom/audible/mobile/player/exo/ExoPlayerController;)Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method
