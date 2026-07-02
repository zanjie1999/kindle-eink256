.class Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;
.super Ljava/lang/Object;
.source "ReaderAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$002(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;Z)Z

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;->onPlaybackPaused()V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$200(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    :cond_1
    return-void
.end method
