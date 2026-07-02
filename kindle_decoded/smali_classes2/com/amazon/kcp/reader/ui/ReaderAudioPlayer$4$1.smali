.class Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->onOverlayVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$000(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;->this$1:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    :cond_0
    return-void
.end method
