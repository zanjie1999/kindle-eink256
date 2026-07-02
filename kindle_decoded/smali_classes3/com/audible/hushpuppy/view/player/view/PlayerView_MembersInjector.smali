.class public final Lcom/audible/hushpuppy/view/player/view/PlayerView_MembersInjector;
.super Ljava/lang/Object;
.source "PlayerView_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/player/view/PlayerView;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionBarUpsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;"
        }
    .end annotation
.end field

.field private final audibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final audiobookSwitcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private final chapterControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ChapterController;",
            ">;"
        }
    .end annotation
.end field

.field private final coverArtManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final locationSeekerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;"
        }
    .end annotation
.end field

.field private final seekControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectActionBarUpsellController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    return-void
.end method

.method public static injectAudibleService(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method

.method public static injectAudiobookSwitcher(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    return-void
.end method

.method public static injectChapterController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ChapterController;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    return-void
.end method

.method public static injectCoverArtManager(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

    return-void
.end method

.method public static injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method

.method public static injectLocationSeekerController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    return-void
.end method

.method public static injectSeekController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/SeekController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    return-void
.end method

.method public static injectViewController(Lcom/audible/hushpuppy/view/player/view/PlayerView;Lcom/audible/hushpuppy/controller/ViewController;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    return-void
.end method
