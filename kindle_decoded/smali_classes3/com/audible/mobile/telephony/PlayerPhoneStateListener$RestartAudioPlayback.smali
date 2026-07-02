.class Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;
.super Ljava/util/TimerTask;
.source "PlayerPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/telephony/PlayerPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartAudioPlayback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;->this$0:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;Lcom/audible/mobile/telephony/PlayerPhoneStateListener$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;-><init>(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;->this$0:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    invoke-static {v0}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->access$100(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->rewind(I)V

    .line 111
    invoke-static {}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Playing after phone call"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;->this$0:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    invoke-static {v0}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->access$300(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    iget-object v0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;->this$0:Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    invoke-static {v0}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->access$100(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->start()V

    return-void
.end method
