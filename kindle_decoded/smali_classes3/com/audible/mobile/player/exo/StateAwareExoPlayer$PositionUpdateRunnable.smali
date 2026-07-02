.class Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;
.super Ljava/lang/Object;
.source "StateAwareExoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exo/StateAwareExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionUpdateRunnable"
.end annotation


# instance fields
.field private lastReportedPosition:I

.field final synthetic this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 976
    iput p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;->lastReportedPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;)V
    .locals 0

    .line 974
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getCurrentPosition()I

    move-result v0

    .line 982
    iget v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;->lastReportedPosition:I

    if-eq v1, v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 983
    iput v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;->lastReportedPosition:I

    .line 984
    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPlaybackPositionChange(I)V

    :cond_0
    return-void
.end method
