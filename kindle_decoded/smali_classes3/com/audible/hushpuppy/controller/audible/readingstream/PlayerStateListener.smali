.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;
.super Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;
.source "PlayerStateListener.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Execute Player state listener"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logMetric()V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/audible/hushpuppy/model/write/IStateContext;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;->execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method

.method protected getAction()Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->getPlayerAction(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object v0

    return-object v0
.end method
