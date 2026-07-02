.class public final Lcom/audible/hushpuppy/plugin/ViewPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "ViewPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/ViewPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final fullPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mainPlayerNarrationSpeedButtonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final playSelectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final readerLeftNavProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final switchToReadingCommandItemProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final upgradeWithAudioCommandItemProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectFullPlayerProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->fullPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    return-void
.end method

.method public static injectMainPlayerNarrationSpeedButtonProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->mainPlayerNarrationSpeedButtonProvider:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

    return-void
.end method

.method public static injectPlaySelectionProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->playSelectionProvider:Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

    return-void
.end method

.method public static injectReaderLeftNavProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->readerLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

    return-void
.end method

.method public static injectSwitchToReadingCommandItemProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->switchToReadingCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    return-void
.end method

.method public static injectUpgradeWithAudioCommandItemProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->upgradeWithAudioCommandItemProvider:Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    return-void
.end method

.method public static injectUpsellPlayerProvider(Lcom/audible/hushpuppy/plugin/ViewPlugin;Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ViewPlugin;->upsellPlayerProvider:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    return-void
.end method
