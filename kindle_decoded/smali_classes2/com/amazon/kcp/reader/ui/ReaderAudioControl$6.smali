.class Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;
.super Ljava/lang/Object;
.source "ReaderAudioControl.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$500(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    return-void
.end method

.method public onPlaybackPaused()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$202(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;Z)Z

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$300(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$400(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPlaybackStarted()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$202(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;Z)Z

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$300(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$400(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onSeekPositionChanged(I)V
    .locals 0

    return-void
.end method
