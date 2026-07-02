.class public Lcom/audible/android/kcp/library/AudiobookNewContentListener;
.super Lcom/audible/android/kcp/krx/BaseKrxProvider;
.source "AudiobookNewContentListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# instance fields
.field private final mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

.field private final mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/companion/CompanionManager;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/audible/android/kcp/krx/BaseKrxProvider;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/audible/android/kcp/library/AudiobookNewContentListener;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    .line 27
    iput-object p2, p0, Lcom/audible/android/kcp/library/AudiobookNewContentListener;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/android/kcp/library/AudiobookNewContentListener;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/companion/CompanionManager;->getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 53
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/audible/android/kcp/library/AudiobookNewContentListener;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/library/NewAudiobookRegistrar;->removeAudiobook(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public register(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    return-void
.end method
