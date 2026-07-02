.class Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;
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
    name = "MaxAvailableTimeUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;)V
    .locals 0

    .line 934
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$900(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$1000(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 940
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$1102(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Z)Z

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$1200(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onMaxAvailableTimeUpdate(I)V

    return-void
.end method
