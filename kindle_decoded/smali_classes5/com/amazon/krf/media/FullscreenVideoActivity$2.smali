.class Lcom/amazon/krf/media/FullscreenVideoActivity$2;
.super Ljava/lang/Object;
.source "FullscreenVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/FullscreenVideoActivity;->createVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/FullscreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/FullscreenVideoActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity$2;->this$0:Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity$2;->this$0:Lcom/amazon/krf/media/FullscreenVideoActivity;

    sget-object v0, Lcom/amazon/krf/media/MediaState$PlaybackState;->STOPPED:Lcom/amazon/krf/media/MediaState$PlaybackState;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/media/FullscreenVideoActivity;->access$100(Lcom/amazon/krf/media/FullscreenVideoActivity;Lcom/amazon/krf/media/MediaState$PlaybackState;I)V

    .line 134
    iget-object p1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity$2;->this$0:Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
