.class Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;
.super Ljava/lang/Object;
.source "ReaderAudioPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$700(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 349
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$800()Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 352
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method
