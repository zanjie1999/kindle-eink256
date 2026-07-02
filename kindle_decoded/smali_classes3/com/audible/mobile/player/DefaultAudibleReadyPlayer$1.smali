.class Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;
.super Ljava/lang/Object;
.source "DefaultAudibleReadyPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

.field final synthetic val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    iput-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$200(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method
