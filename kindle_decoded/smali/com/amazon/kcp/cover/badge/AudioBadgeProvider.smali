.class public Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "AudioBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    return-void
.end method

.method private hasAudibleBadgeIcon(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;)Z
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getBadgeIcon(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryViewType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;->hasAudibleBadgeIcon(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    sget-object p1, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 32
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridAudibleBadge:I

    invoke-virtual {p4, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    goto :goto_0

    .line 35
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listAudibleBadge:I

    invoke-virtual {p4, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    .line 38
    :goto_0
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Audio"

    return-object v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 21
    invoke-virtual {p2}, Lcom/amazon/kcp/cover/badge/BadgeContext;->getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;->hasAudibleBadgeIcon(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;)Z

    move-result p1

    return p1
.end method
