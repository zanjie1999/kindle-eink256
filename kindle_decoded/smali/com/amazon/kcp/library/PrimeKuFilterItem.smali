.class public Lcom/amazon/kcp/library/PrimeKuFilterItem;
.super Lcom/amazon/kcp/library/LibraryFilterItem;
.source "PrimeKuFilterItem.java"


# instance fields
.field private final customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V
    .locals 12

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;I[Ljava/lang/Object;I[Ljava/lang/Object;ILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;Z)V

    move-object/from16 v1, p5

    .line 24
    iput-object v1, v0, Lcom/amazon/kcp/library/PrimeKuFilterItem;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method


# virtual methods
.method public getContentDescriptionResId()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/library/PrimeKuFilterItem;->getTitleResId()I

    move-result v0

    return v0
.end method

.method public getEmptyLibraryStringId(Lcom/amazon/kindle/krx/library/LibraryGroupType;)I
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne p1, v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/library/PrimeKuFilterItem;->shouldShowKU()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->empty_ku_string_all:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->empty_prime_string_all:I

    :goto_0
    return p1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/PrimeKuFilterItem;->shouldShowKU()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->empty_ku_string_downloaded:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->empty_prime_string_downloaded:I

    :goto_1
    return p1
.end method

.method public getImageResId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/library/PrimeKuFilterItem;->shouldShowKU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->getKUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->getPrimeBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getTitleResId()I
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/amazon/kcp/library/PrimeKuFilterItem;->shouldShowKU()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/LibraryUtils;->getLocalizedSubscriptionBadgeDescriptionId(ZZ)I

    move-result v0

    return v0
.end method

.method shouldShowKU()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/library/PrimeKuFilterItem;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v0

    return v0
.end method
