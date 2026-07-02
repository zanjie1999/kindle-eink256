.class Lcom/amazon/krf/media/KRFVideoView$1;
.super Ljava/lang/Object;
.source "KRFVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/KRFVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/KRFVideoView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/KRFVideoView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView$1;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$1;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0, p1}, Lcom/amazon/krf/media/KRFVideoView;->access$002(Lcom/amazon/krf/media/KRFVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 50
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$1;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$1;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$100(Lcom/amazon/krf/media/KRFVideoView;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$1;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$200(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView$1;->this$0:Lcom/amazon/krf/media/KRFVideoView;

    invoke-static {v0}, Lcom/amazon/krf/media/KRFVideoView;->access$200(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
