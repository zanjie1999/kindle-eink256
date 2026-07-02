.class public final Lcom/audible/hushpuppy/plugin/ViewPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "ViewPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.ReaderChromePlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# instance fields
.field protected fullPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

.field protected mainPlayerNarrationSpeedButtonProvider:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

.field protected playSelectionProvider:Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

.field protected readerLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

.field protected switchToReadingCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

.field protected upgradeWithAudioCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

.field protected upsellPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected disable()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->upsellPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 109
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->fullPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 110
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->mainPlayerNarrationSpeedButtonProvider:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 111
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->playSelectionProvider:Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 112
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->readerLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->switchToReadingCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 116
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->upgradeWithAudioCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :goto_0
    return-void
.end method

.method protected enable()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->upsellPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 85
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->fullPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 86
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->mainPlayerNarrationSpeedButtonProvider:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 87
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->playSelectionProvider:Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 88
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->readerLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->switchToReadingCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 92
    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->upgradeWithAudioCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :goto_0
    return-void
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/ViewPlugin;)V

    return-void
.end method
