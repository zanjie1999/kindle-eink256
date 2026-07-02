.class public final Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;
.super Ljava/lang/Object;
.source "HyperLinkType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHyperLinkType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HyperLinkType.kt\ncom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,41:1\n3597#2:42\n4050#2,2:43\n*E\n*S KotlinDebug\n*F\n+ 1 HyperLinkType.kt\ncom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion\n*L\n31#1:42\n31#1,2:43\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final typeFromString(Ljava/lang/String;)Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;
    .locals 10

    .line 31
    invoke-static {}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->values()[Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 32
    invoke-virtual {v4}, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->getTypeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "Locale.ROOT"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    sget-object p1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;->UNSUPPORTED:Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    goto :goto_2

    .line 37
    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/network/models/common/hyperlink/HyperLinkType;

    :goto_2
    return-object p1
.end method
