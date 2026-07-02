.class public Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.source "BookTypeBadgeProvider.java"


# instance fields
.field libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 68
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;->getBadgeFromResource(Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Book Type"

    return-object v0
.end method

.method protected getStringId()I
    .locals 3

    .line 42
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->non_yj:I

    .line 43
    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->yj:I

    .line 47
    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->yj_sample:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMobiMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->mobi:I

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->mobi_sample:I

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isTopazMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->topaz:I

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->mop:I

    :cond_3
    :goto_0
    return v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 1

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 28
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p2, v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
