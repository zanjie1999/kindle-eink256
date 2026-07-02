.class public final Lcom/amazon/kindle/AirAapConfiguration;
.super Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;
.source "AirAapConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAfterConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 63
    const-class v1, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    iget-object v2, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Configuring custom activation DSN"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 66
    const-class v2, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v10, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/identity/IdentityManager;

    .line 67
    new-instance v3, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;

    invoke-direct {v3, v9}, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v4, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;

    invoke-direct {v4}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;-><init>()V

    invoke-interface {v2, v4}, Lcom/audible/mobile/identity/IdentityManager;->setDeviceActivationSerialNumberEncoder(Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;)V

    .line 70
    iget-object v4, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Inject retry policy for activation"

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 71
    sget-object v4, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->Activate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    invoke-virtual {v4}, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->getType()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;-><init>(I)V

    invoke-static {v4, v5}, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->injectPolicy(Ljava/lang/String;Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;)V

    .line 73
    new-instance v4, Lcom/audible/mobile/activation/ActivationFileDataRepository;

    invoke-direct {v4, v9}, Lcom/audible/mobile/activation/ActivationFileDataRepository;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v5, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;

    const-class v6, Lcom/amazon/kindle/AiRMediaButtonProcessingReceiver;

    const/4 v7, 0x0

    invoke-direct {v5, v9, v6, v7}, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 75
    new-instance v6, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;

    invoke-direct {v6}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;-><init>()V

    .line 77
    iget-object v7, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v8, "Registering ContentTypeStorageLocationStrategy"

    invoke-interface {v7, v8}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 78
    const-class v7, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    new-instance v8, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;

    invoke-direct {v8}, Lcom/audible/android/kcp/util/AiRContentTypeStorageLocationStrategy;-><init>()V

    invoke-virtual {v10, v7, v8}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 80
    iget-object v7, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v8, "Registering CoverArtTypeFactory"

    invoke-interface {v7, v8}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 81
    const-class v7, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;

    new-instance v8, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory;

    invoke-direct {v8}, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory;-><init>()V

    invoke-virtual {v10, v7, v8}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 83
    iget-object v7, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v8, "Registering NotificationFactoryProvider"

    invoke-interface {v7, v8}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object v7

    invoke-virtual {v10, v1, v7}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 86
    iget-object v7, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v11, "Registering DownloadManager"

    invoke-interface {v7, v11}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 87
    const-class v7, Lcom/audible/mobile/download/DownloadManager;

    invoke-virtual {v10, v7, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 89
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v7, "Registering MediaButtonManager"

    invoke-interface {v3, v7}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 90
    const-class v3, Lcom/audible/mobile/media/button/MediaButtonManager;

    invoke-virtual {v10, v3, v5}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 92
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v7, "Registering ActivationDataRepository"

    invoke-interface {v3, v7}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 93
    const-class v3, Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-virtual {v10, v3, v4}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 95
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v4, "Registering HeadsetPolicy"

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 96
    const-class v3, Lcom/audible/playersdk/headset/HeadsetPolicy;

    new-instance v4, Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;

    invoke-direct {v4, v9}, Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v3, v4}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 98
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v4, "Registering PlayerNotificationFactory"

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object v3

    const-class v4, Lcom/audible/mobile/player/service/PlayerService;

    new-instance v7, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    invoke-direct {v7, v9}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v7}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->offerFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)Z

    .line 101
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v4, "Registering MetricManager"

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 102
    const-class v3, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v10, v3, v6}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 104
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v4, "Registering VoucherManager"

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 105
    new-instance v3, Lcom/audible/license/VoucherManagerFactory;

    invoke-direct {v3}, Lcom/audible/license/VoucherManagerFactory;-><init>()V

    .line 107
    new-instance v4, Lcom/amazon/kindle/AirAapConfiguration$1;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/AirAapConfiguration$1;-><init>(Lcom/amazon/kindle/AirAapConfiguration;)V

    invoke-virtual {v3, v9, v2, v6, v4}, Lcom/audible/license/VoucherManagerFactory;->getDefaultVoucherManager(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lkotlin/jvm/functions/Function1;)Lcom/audible/license/VoucherManager;

    move-result-object v3

    .line 115
    const-class v4, Lcom/audible/license/VoucherManager;

    invoke-virtual {v10, v4, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 118
    iget-object v3, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v3, v8}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 119
    new-instance v3, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    invoke-direct {v3}, Lcom/audible/mobile/notification/NotificationFactoryProvider;-><init>()V

    .line 120
    invoke-virtual {v10, v1, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 122
    iget-object v1, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v4, "Registering ShowNotificationUnbindPolicy"

    invoke-interface {v1, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 123
    new-instance v7, Lcom/audible/mobile/player/policy/ShowNotificationUnbindPolicy;

    invoke-direct {v7, v9, v3}, Lcom/audible/mobile/player/policy/ShowNotificationUnbindPolicy;-><init>(Landroid/content/Context;Lcom/audible/mobile/notification/NotificationFactoryProvider;)V

    .line 124
    const-class v1, Lcom/audible/mobile/player/policy/ShowNotificationUnbindPolicy;

    invoke-virtual {v10, v1, v7}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 126
    iget-object v1, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Registering PlayerManager"

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 127
    new-instance v4, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;

    invoke-direct {v4, v9, v2, v6}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 128
    new-instance v8, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;

    invoke-direct {v8, v9, v6}, Lcom/audible/mobile/player/metadata/SdkBasedCoverArtProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 129
    new-instance v11, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;

    invoke-direct {v11}, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;-><init>()V

    .line 130
    new-instance v1, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;

    invoke-direct {v1, v11}, Lcom/audible/mobile/player/service/PlayerButtonPressedListener;-><init>(Lcom/audible/mobile/player/LazyPlayerManager;)V

    .line 131
    new-instance v12, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;

    invoke-direct {v12, v5, v1}, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;-><init>(Lcom/audible/mobile/media/button/MediaButtonManager;Lcom/audible/mobile/media/button/ButtonPressedListener;)V

    .line 132
    new-instance v13, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    .line 139
    invoke-static {}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;

    move-result-object v14

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v5, v8

    move-object v6, v12

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/audio/metadata/CoverArtProvider;Lcom/audible/mobile/media/button/MediaButtonPlayerEventListener;Lcom/audible/mobile/player/policy/UnbindPolicy;Lcom/audible/mobile/notification/NotificationFactoryProvider;)V

    .line 141
    invoke-virtual {v11, v13}, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->setPlayerManager(Lcom/audible/mobile/player/PlayerManager;)V

    .line 142
    const-class v1, Lcom/audible/mobile/player/PlayerManager;

    invoke-virtual {v10, v1, v13}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 144
    iget-object v1, v0, Lcom/audible/hushpuppy/AbstractHushpuppyAapConfiguration;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Registering ChapterMetadataProvider"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;

    invoke-direct {v1, v9}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;-><init>(Landroid/content/Context;)V

    .line 146
    const-class v2, Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;

    invoke-virtual {v10, v2, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    return-void
.end method

.method protected onBeforeConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
    .locals 0

    return-void
.end method
