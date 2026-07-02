.class public Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "RemoteControlPlayerEventListener.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

.field private final context:Landroid/content/Context;

.field private coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

.field private final metadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

.field private final remoteControlClient:Landroid/media/RemoteControlClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audioManager:Landroid/media/AudioManager;

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/amazon/kindle/AiRMediaButtonProcessingReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v0, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    .line 63
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->coverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    .line 64
    new-instance v0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;

    .line 65
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/identity/IdentityManager;

    .line 66
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v2

    const-class v3, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v2, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->metadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    .line 68
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    const-class v0, Lcom/audible/mobile/media/button/MediaButtonManager;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/media/button/MediaButtonManager;

    .line 69
    new-instance v0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;

    new-instance v1, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;

    invoke-direct {v1}, Lcom/audible/android/kcp/sync/HushpuppySynchronizationManager;-><init>()V

    .line 71
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object p3

    invoke-direct {v0, v1, p2, p3}, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;-><init>(Lcom/audible/android/kcp/sync/SynchronizationManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/sync/ISyncManager;)V

    .line 72
    new-instance p3, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;

    invoke-direct {p3, p2, v0}, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;-><init>(Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/audible/android/kcp/sync/SynchronizationUpdater;)V

    invoke-interface {p1, p3}, Lcom/audible/mobile/media/button/MediaButtonManager;->registerListener(Lcom/audible/mobile/media/button/ButtonPressedListener;)V

    return-void
.end method

.method private registerRemoteControlClient()V
    .locals 2

    .line 113
    sget-object v0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering remote client"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 116
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v1, 0xbd

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method

.method private setAudiobookMetaData(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->metadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    invoke-interface {v0, p1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    iput-object p1, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    return-void
.end method

.method private setCoverArt(Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    iget-object v1, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-virtual {v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->context:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;->getBitmap(Lcom/audible/mobile/domain/Asin;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto :goto_0

    .line 155
    :cond_0
    sget-object p1, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cover art not found to display on lock-screen."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private unregisterRemoteControlClient()V
    .locals 2

    .line 123
    sget-object v0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unregistering remote client"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method private updateMetadata(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)V
    .locals 3

    .line 129
    sget-object v0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Updating metadata for remote client metadata editor"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    .line 137
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 141
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x3

    .line 142
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/16 v1, 0xd

    .line 143
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 146
    :cond_2
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->setCoverArt(Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 147
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void

    .line 132
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Audiobook metadata or metadata editor object is null."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->setAudiobookMetaData(Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 92
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->setAudiobookMetaData(Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->registerRemoteControlClient()V

    .line 85
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 86
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->updateMetadata(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->registerRemoteControlClient()V

    .line 78
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 79
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->updateMetadata(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->unregisterRemoteControlClient()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 104
    invoke-direct {p0}, Lcom/audible/android/kcp/player/RemoteControlPlayerEventListener;->unregisterRemoteControlClient()V

    return-void
.end method
