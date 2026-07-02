.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "AidlBackedPlayerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAudioMetadataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V
    .locals 0

    .line 773
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 817
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method

.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 777
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 4

    .line 782
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    monitor-enter v0

    .line 783
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    .line 784
    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v2, v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$702(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/AudioDataSource;

    .line 786
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$700(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2300(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    .line 788
    invoke-static {v2}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$700(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 800
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getDuration()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_0

    .line 801
    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    new-instance v3, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    invoke-direct {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;-><init>()V

    .line 802
    invoke-virtual {v3, v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->copy(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    .line 803
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getDuration()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->duration(I)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;

    .line 804
    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->build()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object p1

    .line 801
    invoke-static {v2, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2402(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    goto :goto_0

    .line 806
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {p1, v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2402(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    goto :goto_0

    .line 810
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2402(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 812
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
