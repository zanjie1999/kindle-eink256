.class Lcom/amazon/krf/media/VideoPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/VideoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$1;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/amazon/krf/media/VideoPlugin;->access$000()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BroadcastReceiver.onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->ACTION_NOTIFY_VIDEO_STATE:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$1;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    .line 125
    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$100(Lcom/amazon/krf/media/VideoPlugin;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$1;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    .line 126
    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$100(Lcom/amazon/krf/media/VideoPlugin;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$1;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p2}, Lcom/amazon/krf/media/MediaState;->fromIntent(Landroid/content/Intent;)Lcom/amazon/krf/media/MediaState;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/krf/media/VideoPlugin;->access$202(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/MediaState;)Lcom/amazon/krf/media/MediaState;

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Lcom/amazon/krf/media/VideoPlugin;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver.onReceive: unexpected intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
