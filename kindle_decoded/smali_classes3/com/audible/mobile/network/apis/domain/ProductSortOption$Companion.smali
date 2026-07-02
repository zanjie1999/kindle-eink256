.class public final Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;
.super Ljava/lang/Object;
.source "ProductSortOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/apis/domain/ProductSortOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductSortOption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductSortOption.kt\ncom/audible/mobile/network/apis/domain/ProductSortOption$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,30:1\n3597#2:31\n4050#2,2:32\n*E\n*S KotlinDebug\n*F\n+ 1 ProductSortOption.kt\ncom/audible/mobile/network/apis/domain/ProductSortOption$Companion\n*L\n22#1:31\n22#1,2:32\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/audible/mobile/network/apis/domain/ProductSortOption$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final sortOptionFromString(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/ProductSortOption;
    .locals 6

    .line 22
    invoke-static {}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->values()[Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 22
    invoke-static {v4}, Lcom/audible/mobile/network/apis/domain/ProductSortOption;->access$getOption$p(Lcom/audible/mobile/network/apis/domain/ProductSortOption;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/network/apis/domain/ProductSortOption;

    :goto_1
    return-object p1
.end method
