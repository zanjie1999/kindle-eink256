.class Lcom/amazon/krf/media/VideoPlugin$2;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/VideoPlugin;
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

    .line 138
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/amazon/krf/media/IMediaPlayer;)V
    .locals 1

    .line 141
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 142
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$2;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$600(Lcom/amazon/krf/media/VideoPlugin;)V

    :cond_1
    return-void
.end method
