.class Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "ReaderAudioPlayer.java"


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

    .line 300
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->requestPause()V

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 3

    .line 303
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$500(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$600(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$200(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$500(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/kcp/animation/AnimatorFactory;->createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$600(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$200(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->access$500(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/kcp/animation/AnimatorFactory;->createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p1

    .line 309
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    :goto_0
    return-void
.end method
