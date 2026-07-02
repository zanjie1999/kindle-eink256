.class public abstract Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "SashBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;
    .locals 0

    .line 44
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/cover/badge/Badge;

    move-result-object p1

    .line 45
    invoke-virtual {p2}, Lcom/amazon/kcp/cover/badge/BadgeContext;->getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne p2, p3, :cond_0

    if-eqz p1, :cond_0

    .line 46
    sget-object p2, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->TEXT:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/cover/badge/Badge;->setViewType(Lcom/amazon/kcp/cover/badge/Badge$ViewType;)V

    :cond_0
    return-object p1
.end method

.method protected getBadgeFromResource(Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 20
    sget-object v0, Lcom/amazon/kcp/cover/badge/SashBadgeProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;->getStringId()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/kcp/cover/badge/BadgeUtils;->createSashBadge(ILcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_ribbon:I

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 31
    sget-object v0, Lcom/amazon/kcp/cover/badge/SashBadgeProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;->getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;->getStringId()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getStringId()I
.end method
