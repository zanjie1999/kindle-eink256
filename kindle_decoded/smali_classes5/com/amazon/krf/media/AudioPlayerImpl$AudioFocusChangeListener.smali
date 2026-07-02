.class Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "AudioPlayerImpl.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/AudioPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/AudioPlayerImpl;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/media/AudioPlayerImpl;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/media/AudioPlayerImpl;Lcom/amazon/krf/media/AudioPlayerImpl$1;)V
    .locals 0

    .line 860
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;-><init>(Lcom/amazon/krf/media/AudioPlayerImpl;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x3

    const-string v1, "AudioPlayerImpl"

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 867
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    invoke-static {p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->access$100(Lcom/amazon/krf/media/AudioPlayerImpl;)Lcom/amazon/krf/media/AudioPlayerImpl$State;

    move-result-object p1

    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Error:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq p1, v0, :cond_1

    .line 869
    :try_start_0
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    iget-object p1, p1, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaPlayer.setVolume"

    .line 871
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    invoke-static {p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->access$200(Lcom/amazon/krf/media/AudioPlayerImpl;)V

    goto :goto_1

    .line 879
    :cond_2
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/krf/media/AudioPlayerImpl;->access$300(Lcom/amazon/krf/media/AudioPlayerImpl;Z)V

    goto :goto_1

    .line 883
    :cond_3
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    invoke-static {p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->access$400(Lcom/amazon/krf/media/AudioPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 885
    :try_start_1
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    iget-object p1, p1, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "MediaPlayer.setVolume failed"

    .line 887
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method
