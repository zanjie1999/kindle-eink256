.class public Lcom/amazon/kcp/cover/badge/NewBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.source "NewBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "New"

    return-object v0
.end method

.method protected getStringId()I
    .locals 1

    .line 44
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->new_book_label:I

    return v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 1

    .line 17
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isNew()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 22
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 25
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 28
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->isAudioBookNew(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
