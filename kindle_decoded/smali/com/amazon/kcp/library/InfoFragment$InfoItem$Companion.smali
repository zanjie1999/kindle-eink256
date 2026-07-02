.class public final Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;
.super Ljava/lang/Object;
.source "InfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/InfoFragment$InfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InfoFragment.kt\ncom/amazon/kcp/library/InfoFragment$InfoItem$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n3755#2:114\n4270#2,2:115\n*E\n*S KotlinDebug\n*F\n+ 1 InfoFragment.kt\ncom/amazon/kcp/library/InfoFragment$InfoItem$Companion\n*L\n47#1:114\n47#1,2:115\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;-><init>()V

    return-void
.end method

.method private final isCookiesOrTargetedAdsAllowed(Lcom/amazon/kcp/application/Marketplace;)Z
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/application/Marketplace;

    .line 71
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 73
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 76
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 77
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isItemAllowed(Lcom/amazon/kcp/library/InfoFragment$InfoItem;)Z
    .locals 2

    .line 55
    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p1

    const-string v0, "Marketplace.getInstance(\u2026etPreferredMarketplace())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;->isCookiesOrTargetedAdsAllowed(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isWhatsNewPopUpAllowed()Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getAll()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/InfoFragment$InfoItem;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->values()[Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 47
    sget-object v5, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->Companion:Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;

    invoke-direct {v5, v4}, Lcom/amazon/kcp/library/InfoFragment$InfoItem$Companion;->isItemAllowed(Lcom/amazon/kcp/library/InfoFragment$InfoItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
