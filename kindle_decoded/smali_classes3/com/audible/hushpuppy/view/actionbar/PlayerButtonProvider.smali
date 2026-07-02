.class public final Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;
.super Lcom/audible/hushpuppy/view/common/BaseKrxProvider;
.source "PlayerButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/view/common/BaseKrxProvider;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private final button:Lcom/amazon/kindle/krx/ui/IActionButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/amazon/kindle/krx/ui/IActionButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/BaseKrxProvider;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 47
    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 48
    iput-object p3, p0, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->button:Lcom/amazon/kindle/krx/ui/IActionButton;

    return-void
.end method

.method private isEnabled()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->button:Lcom/amazon/kindle/krx/ui/IActionButton;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-eq p1, v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->button:Lcom/amazon/kindle/krx/ui/IActionButton;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/PlayerButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
