.class public Lcom/amazon/kcp/cover/badge/ReadingProgressBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "ReadingProgressBadgeProvider.java"


# instance fields
.field private final drawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/badge/ReadingProgressBadgeProvider;->drawableCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 57
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result p5

    .line 59
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
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

    .line 66
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getBadgeIcon(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryViewType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/ReadingProgressBadgeProvider;->drawableCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 76
    invoke-static {p5, p2, p3, p4, v1}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->createReadingProgressBadge(ILcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    iget-object p2, p0, Lcom/amazon/kcp/cover/badge/ReadingProgressBadgeProvider;->drawableCache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Reading Progress"

    return-object v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 3

    .line 36
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    .line 37
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 38
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-eq v0, v2, :cond_2

    .line 39
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-eq v0, v2, :cond_2

    .line 40
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isKept()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    if-eqz v0, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result p1

    if-lez p1, :cond_2

    .line 51
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isBookTypeDocument(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
