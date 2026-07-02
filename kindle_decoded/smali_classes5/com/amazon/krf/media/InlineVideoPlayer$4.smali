.class Lcom/amazon/krf/media/InlineVideoPlayer$4;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/InlineVideoPlayer;->notifyMediaURIAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/InlineVideoPlayer;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$4;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    iput-object p2, p0, Lcom/amazon/krf/media/InlineVideoPlayer$4;->val$uriString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer$4;->this$0:Lcom/amazon/krf/media/InlineVideoPlayer;

    invoke-static {v0}, Lcom/amazon/krf/media/InlineVideoPlayer;->access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/media/InlineVideoPlayer$4;->val$uriString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
