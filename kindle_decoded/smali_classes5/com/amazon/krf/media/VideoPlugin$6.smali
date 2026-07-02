.class Lcom/amazon/krf/media/VideoPlugin$6;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    new-instance v1, Lcom/amazon/krf/media/MediaState;

    iget-object v2, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    .line 264
    invoke-static {v2}, Lcom/amazon/krf/media/VideoPlugin;->access$100(Lcom/amazon/krf/media/VideoPlugin;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    .line 265
    invoke-static {v3}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/amazon/krf/media/MediaState$PlaybackState;->PLAYING:Lcom/amazon/krf/media/MediaState$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/krf/media/MediaState$PlaybackState;->PAUSED:Lcom/amazon/krf/media/MediaState$PlaybackState;

    :goto_0
    iget-object v4, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    .line 266
    invoke-static {v4}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/krf/media/MediaState;-><init>(Ljava/lang/String;Lcom/amazon/krf/media/MediaState$PlaybackState;I)V

    .line 263
    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$202(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/MediaState;)Lcom/amazon/krf/media/MediaState;

    goto :goto_1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$202(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/MediaState;)Lcom/amazon/krf/media/MediaState;

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$6;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->pause()V

    :cond_2
    return-void
.end method
