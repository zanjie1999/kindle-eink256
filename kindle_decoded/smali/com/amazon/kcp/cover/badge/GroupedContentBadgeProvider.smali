.class public Lcom/amazon/kcp/cover/badge/GroupedContentBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "GroupedContentBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;
    .locals 0

    .line 25
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    sget-object p2, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->TEXT:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/cover/badge/Badge;->setViewType(Lcom/amazon/kcp/cover/badge/Badge$ViewType;)V

    :cond_0
    return-object p1
.end method

.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Group Count"

    return-object v0
.end method

.method protected getBadgeResourceId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->resources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/AccessibilityUtils;->isFontSizeAbove(Landroid/content/res/Resources;F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    sget-object v1, Lcom/amazon/kcp/cover/badge/GroupedContentBadgeProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_1

    .line 39
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridBackIssuesBadgeAccessible:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1

    .line 41
    :cond_1
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridBackIssuesBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    .line 44
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listIssuesBadgeAccessible:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1

    .line 46
    :cond_3
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listBackIssuesBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1
.end method

.method protected getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsinCount()I

    move-result p1

    const/16 p2, 0x3e8

    if-le p1, p2, :cond_0

    .line 56
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->group_asin_count_thousand_plus:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 60
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->group_asin_count_thousand:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 18
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected shouldShowWhenConsolidated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
