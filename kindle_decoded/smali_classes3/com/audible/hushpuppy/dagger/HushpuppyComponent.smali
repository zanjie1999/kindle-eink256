.class public interface abstract Lcom/audible/hushpuppy/dagger/HushpuppyComponent;
.super Ljava/lang/Object;
.source "HushpuppyComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract abstractAutoDownloadSetting()Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;
.end method

.method public abstract audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;
.end method

.method public abstract audibleService()Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
.end method

.method public abstract contentUpdateHandler()Lcom/audible/hushpuppy/controller/ContentUpdateHandler;
.end method

.method public abstract coverArtManager()Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;
.end method

.method public abstract downloadManager()Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;
.end method

.method public abstract endPointController()Lcom/audible/pfm/controller/IEndpointController;
.end method

.method public abstract eventBus()Lde/greenrobot/event/EventBus;
.end method

.method public abstract hushpuppyController()Lcom/audible/hushpuppy/controller/HushpuppyController;
.end method

.method public abstract hushpuppyModel()Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.end method

.method public abstract hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/ContentDownloadPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/DebugPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/LibraryPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/MetricLoggingPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/ReadAlongPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/UpsellPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/plugin/ViewPlugin;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/common/FragmentHolder;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/player/view/CoverArtManager;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/player/view/UpsellBannerWebView;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewFactory;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/UpsellWebView;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsTimeoutFragment;)V
.end method

.method public abstract inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)V
.end method

.method public abstract jitTutorialProvider()Lcom/audible/hushpuppy/controller/IJitTutorialProvider;
.end method

.method public abstract kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
.end method

.method public abstract legacyDownloadManager()Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;
.end method

.method public abstract legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;
.end method

.method public abstract libraryController()Lcom/audible/hushpuppy/controller/ILibraryController;
.end method

.method public abstract libraryDownloadController()Lcom/audible/hushpuppy/controller/LibraryDownloadController;
.end method

.method public abstract listeningStatsManager()Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;
.end method

.method public abstract locationSeekerController()Lcom/audible/hushpuppy/controller/LocationSeekerController;
.end method

.method public abstract mobileWeblabHandler()Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;
.end method

.method public abstract servicesCallbackController()Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;
.end method

.method public abstract sleepTimerController()Lcom/audible/hushpuppy/controller/ISleepTimerController;
.end method

.method public abstract startActionsUpsellController()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;
.end method

.method public abstract toaWebViewUpsellController()Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;
.end method

.method public abstract todoEventHandler()Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
.end method

.method public abstract upsellModel()Lcom/audible/hushpuppy/model/read/IUpsellModel;
.end method
