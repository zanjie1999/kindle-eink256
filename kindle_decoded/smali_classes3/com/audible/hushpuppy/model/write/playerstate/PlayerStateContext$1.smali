.class Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext$1;
.super Ljava/lang/Object;
.source "PlayerStateContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->updatePlayState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext$1;->this$0:Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext$1;->this$0:Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;

    invoke-static {v0}, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->access$000(Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;->play()V

    return-void
.end method
