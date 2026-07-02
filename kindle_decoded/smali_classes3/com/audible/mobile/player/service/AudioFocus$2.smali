.class Lcom/audible/mobile/player/service/AudioFocus$2;
.super Landroid/os/Handler;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AudioFocus;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AudioFocus;Landroid/os/Looper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus$2;->this$0:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus$2;->this$0:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AudioFocus;->access$000(Lcom/audible/mobile/player/service/AudioFocus;)Lcom/audible/mobile/player/service/AudioFocusEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onMayResumePlayback()V

    .line 88
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus$2;->this$0:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AudioFocus;->access$100(Lcom/audible/mobile/player/service/AudioFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
