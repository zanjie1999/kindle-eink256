.class public final Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView_MembersInjector;
.super Ljava/lang/Object;
.source "UpsellPlayerView_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;",
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

.field private final currencyFormatterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/CurrencyFormatter;",
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

.field private final upsellModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUpsellModel;",
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
.method public static injectCurrencyFormatter(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;Lcom/audible/hushpuppy/view/common/CurrencyFormatter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->currencyFormatter:Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    return-void
.end method

.method public static injectUpsellModel(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;Lcom/audible/hushpuppy/model/read/IUpsellModel;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    return-void
.end method
