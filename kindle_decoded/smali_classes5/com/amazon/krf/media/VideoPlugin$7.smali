.class Lcom/amazon/krf/media/VideoPlugin$7;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->onResume()V
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

    .line 281
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$200(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/MediaState;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 285
    sget-object v0, Lcom/amazon/krf/media/VideoPlugin$13;->$SwitchMap$com$amazon$krf$media$MediaState$PlaybackState:[I

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v1}, Lcom/amazon/krf/media/VideoPlugin;->access$200(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/MediaState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/media/MediaState;->getPlaybackState()Lcom/amazon/krf/media/MediaState$PlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->stop()V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v1}, Lcom/amazon/krf/media/VideoPlugin;->access$200(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/MediaState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/media/MediaState;->getPlaybackPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->pause()V

    .line 292
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-static {}, Lcom/amazon/krf/media/VideoPlugin;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to show media controller on resume!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$202(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/MediaState;)Lcom/amazon/krf/media/MediaState;

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$7;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1200(Lcom/amazon/krf/media/VideoPlugin;)V

    return-void
.end method
