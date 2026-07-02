.class Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;
.super Ljava/lang/Object;
.source "AbstractSingleTrackMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Handler;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$000(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$100(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method
