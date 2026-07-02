.class Lcom/amazon/krf/media/VideoPlugin$11;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->notifyVideoURIAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$11;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iput-object p2, p0, Lcom/amazon/krf/media/VideoPlugin$11;->val$uriString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$11;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$11;->val$uriString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$102(Lcom/amazon/krf/media/VideoPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$11;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$11;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$11;->val$uriString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/krf/media/IMediaPlayer;->notifyMediaURIAvailable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
