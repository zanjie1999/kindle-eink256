.class final Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;
.super Ljava/lang/Object;
.source "DefaultAudibleReadyPlayer.java"

# interfaces
.implements Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalAudioPlayerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;-><init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method public onError(Lcom/audible/mobile/player/Error;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    iget-object v0, v0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Error reported by SdkBasedAudioPlayer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/audible/mobile/util/ErrorUtils;->getCurrentStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/mobile/player/Error;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileRenamed(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 134
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    iget-object p1, p1, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "Data source file was renamed, resyncing..."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    new-instance v6, Lcom/audible/mobile/player/AudioDataSource;

    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$100(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$100(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {p2}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$100(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p2

    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v4

    iget-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {p2}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$100(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p2

    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;)V

    invoke-static {p1, v6}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$102(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/AudioDataSource;

    .line 136
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {p2}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$200(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method

.method public onPlaybackPositionChange(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPlaybackPositionChange(I)V

    return-void
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method public onVolumeChanged(FF)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;->this$0:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onVolumeChanged(FF)V

    return-void
.end method
