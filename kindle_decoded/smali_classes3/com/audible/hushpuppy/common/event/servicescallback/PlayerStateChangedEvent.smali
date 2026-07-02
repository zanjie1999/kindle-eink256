.class public Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;
.super Ljava/lang/Object;
.source "PlayerStateChangedEvent.java"


# instance fields
.field private state:Lcom/audible/hushpuppy/common/player/PlayerState;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->state:Lcom/audible/hushpuppy/common/player/PlayerState;

    return-void
.end method


# virtual methods
.method public final getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->state:Lcom/audible/hushpuppy/common/player/PlayerState;

    return-object v0
.end method
