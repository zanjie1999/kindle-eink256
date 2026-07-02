.class public Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;
.super Ljava/lang/Object;
.source "BadgeProviderFactory.java"


# instance fields
.field private customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

.field private gridProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/cover/badge/IBadgeProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private listProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/cover/badge/IBadgeProvider;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->gridProviders:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->listProviders:Ljava/util/Map;

    .line 24
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    iput-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    .line 26
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerGridProviders()V

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerListProviders()V

    return-void
.end method

.method private getProviderMap(Lcom/amazon/kindle/krx/library/LibraryViewType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryViewType;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/cover/badge/IBadgeProvider;",
            ">;>;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->listProviders:Ljava/util/Map;

    return-object p1

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->gridProviders:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public getProviders(Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Lcom/amazon/kindle/krx/library/LibraryViewType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/cover/badge/IBadgeProvider;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->getProviderMap(Lcom/amazon/kindle/krx/library/LibraryViewType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected registerGridProviders()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/BookTypeBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 74
    :cond_0
    new-instance v0, Lcom/amazon/kcp/cover/badge/ReadingProgressBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/ReadingProgressBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 75
    new-instance v0, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_CORNER:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 77
    new-instance v0, Lcom/amazon/kcp/cover/badge/SavedBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/SavedBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 78
    new-instance v0, Lcom/amazon/kcp/cover/badge/RentalBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/RentalBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 79
    new-instance v0, Lcom/amazon/kcp/cover/badge/ReadBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/ReadBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 80
    new-instance v0, Lcom/amazon/kcp/cover/badge/SampleBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/SampleBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 81
    new-instance v0, Lcom/amazon/kcp/cover/badge/TrialBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/TrialBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 82
    new-instance v0, Lcom/amazon/kcp/cover/badge/NewBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/NewBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 83
    new-instance v0, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 84
    new-instance v0, Lcom/amazon/kcp/cover/badge/GroupedContentBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/GroupedContentBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 85
    new-instance v0, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 86
    new-instance v0, Lcom/amazon/kcp/cover/badge/AlertBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/AlertBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 87
    new-instance v0, Lcom/amazon/kcp/cover/badge/OnDeviceBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/OnDeviceBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    if-eqz v0, :cond_1

    .line 89
    new-instance v1, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;-><init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;)V

    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgePosition;->BOTTOM_SECTION_BOTTOM_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_1
    return-void
.end method

.method protected registerListProviders()V
    .locals 3

    .line 98
    new-instance v0, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/AudioBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->STAMP:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 99
    new-instance v0, Lcom/amazon/kcp/cover/badge/SeriesContentBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/SeriesContentBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->STAMP:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 101
    new-instance v0, Lcom/amazon/kcp/cover/badge/GroupedContentBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/GroupedContentBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->MIDDLE_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 102
    new-instance v0, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/CancelBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->MIDDLE_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 103
    new-instance v0, Lcom/amazon/kcp/cover/badge/AlertBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/AlertBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->MIDDLE_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 104
    new-instance v0, Lcom/amazon/kcp/cover/badge/OnDeviceBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/OnDeviceBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->MIDDLE_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 106
    new-instance v0, Lcom/amazon/kcp/cover/badge/SavedBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/SavedBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 107
    new-instance v0, Lcom/amazon/kcp/cover/badge/RentalBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/RentalBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 108
    new-instance v0, Lcom/amazon/kcp/cover/badge/ReadBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/ReadBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 109
    new-instance v0, Lcom/amazon/kcp/cover/badge/SampleBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/SampleBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 110
    new-instance v0, Lcom/amazon/kcp/cover/badge/TrialBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/TrialBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 111
    new-instance v0, Lcom/amazon/kcp/cover/badge/NewBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/NewBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 112
    new-instance v0, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/badge/GroupedDetailBadgeProvider;-><init>()V

    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgePosition;->RIBBON_LEFT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/cover/badge/SubscriptionBadgeProvider;-><init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;)V

    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgePosition;->BADGE_ROW_2_COL_1:Lcom/amazon/kcp/cover/badge/BadgePosition;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_0
    return-void
.end method

.method public registerProvider(Lcom/amazon/kcp/cover/badge/IBadgeProvider;Lcom/amazon/kcp/cover/badge/BadgePosition;Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 1

    .line 51
    invoke-direct {p0, p3}, Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;->getProviderMap(Lcom/amazon/kindle/krx/library/LibraryViewType;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 53
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
