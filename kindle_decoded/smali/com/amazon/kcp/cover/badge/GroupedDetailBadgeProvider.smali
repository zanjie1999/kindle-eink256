.class public Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "GroupedDetailBadgeProvider.java"


# instance fields
.field private isContentDescriptionSentenceCased:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;->isContentDescriptionSentenceCased:Z

    return-void
.end method


# virtual methods
.method protected getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadgeFromResource(Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;
    .locals 0

    .line 93
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    sget-object p2, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->TEXT:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/cover/badge/Badge;->setViewType(Lcom/amazon/kcp/cover/badge/Badge$ViewType;)V

    :cond_0
    return-object p1
.end method

.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Group Detail"

    return-object v0
.end method

.method protected getBadgeResourceId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 43
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridGroupTypeBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1

    .line 40
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_ribbon:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1
.end method

.method protected getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 50
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;->getGroupContentDescription(Lcom/amazon/kcp/library/models/SeriesGroupType;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-boolean p2, p0, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;->isContentDescriptionSentenceCased:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p2

    if-nez p2, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    .line 57
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object p2

    .line 58
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    invoke-static {p2, p1, v0, p3}, Lcom/amazon/kcp/util/LibraryUtils;->getSeriesGroupPrefixAndItemNumber(Lcom/amazon/kcp/library/models/SeriesGroupType;Ljava/lang/String;ZLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getGroupContentDescription(Lcom/amazon/kcp/library/models/SeriesGroupType;)I
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->isInJapan()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->series_type_issue_jp:I

    return p1

    .line 76
    :cond_1
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->series_type_issue:I

    return p1

    .line 71
    :cond_2
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->series_type_omnibus:I

    return p1

    .line 69
    :cond_3
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->series_type_trade:I

    return p1
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/amazon/kindle/utils/SeriesBindingHelper;->shouldShowSeriesBinding(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    return p1
.end method
