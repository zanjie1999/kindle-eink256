.class public Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;
.super Lcom/audible/hushpuppy/view/common/BaseKrxProvider;
.source "AudibleServiceAccessibilityProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final bookOpenTutorialString:Ljava/lang/String;

.field protected isEnabled:Z

.field protected isRegistered:Z


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/common/BaseKrxProvider;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 20
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->bookOpenTutorialString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 67
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerAccessibilityProvider(Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;)V

    .line 72
    iput-boolean v1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isRegistered:Z

    .line 74
    :cond_1
    iput-boolean v1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public getBookOpenTutorial(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-boolean p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->bookOpenTutorialString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isReadingBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 57
    iget-boolean p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startReadingBook(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getPlayingAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->play()V

    :cond_0
    return-void
.end method

.method public stopReadingBook()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    :cond_0
    return-void
.end method
