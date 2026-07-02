.class public Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "SubscriptionBadgeProvider.java"


# instance fields
.field private final customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method

.method private getCUDrawableResId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne p1, v0, :cond_0

    .line 90
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listCUBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1

    .line 92
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridCUBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1
.end method

.method private getKUDrawableResId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/application/Marketplace;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne p1, v0, :cond_1

    .line 68
    sget-object p1, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    if-ne p2, p1, :cond_0

    .line 69
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listKUFRBadge:I

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1

    .line 71
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listKUBadge:I

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1

    .line 73
    :cond_1
    sget-object p1, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    if-ne p2, p1, :cond_2

    .line 74
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridKUFRBadge:I

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1

    .line 76
    :cond_2
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridKUBadge:I

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1
.end method

.method private getPrimeDrawableResId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    if-ne p1, v0, :cond_0

    .line 82
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listPrimeBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1

    .line 84
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridPrimeBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected getBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/krx/library/LibraryViewType;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kcp/application/Marketplace;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p2, p4}, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->getCUDrawableResId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    :cond_1
    invoke-direct {p0, p2, p5, p4}, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->getKUDrawableResId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/application/Marketplace;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 44
    :cond_2
    iget-object p5, p0, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {p5}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-direct {p0, p2, p4}, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;->getPrimeDrawableResId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Subscription"

    return-object v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 63
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowSubscriptionBadge(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected shouldShowWhenConsolidated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
