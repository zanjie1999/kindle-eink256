.class Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;
.super Ljava/lang/Object;
.source "AudioPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/AudioPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleasePlayerTask"
.end annotation


# instance fields
.field private m_player:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/amazon/krf/media/AudioPlayerImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/media/AudioPlayerImpl;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;->this$0:Lcom/amazon/krf/media/AudioPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p2, p0, Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;->m_player:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
