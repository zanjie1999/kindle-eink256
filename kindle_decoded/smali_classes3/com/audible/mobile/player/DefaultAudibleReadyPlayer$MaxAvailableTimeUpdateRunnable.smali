.class Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;
.super Ljava/lang/Object;
.source "DefaultAudibleReadyPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxAvailableTimeUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;)V
    .locals 0

    .line 713
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;-><init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$500(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/audio/AudiobookPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->getTimeAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onMaxAvailableTimeUpdate(I)V

    .line 719
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$500(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/audio/AudiobookPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->getTimeAvailable()I

    move-result v0

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$600(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 721
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0, v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$702(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Z)Z

    :cond_0
    return-void
.end method
