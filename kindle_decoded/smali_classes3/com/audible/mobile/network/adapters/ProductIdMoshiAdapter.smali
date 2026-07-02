.class public final Lcom/audible/mobile/network/adapters/ProductIdMoshiAdapter;
.super Ljava/lang/Object;
.source "ProductIdMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 15
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableProductIdImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p1

    const-string v0, "ImmutableProductIdImpl.nullSafeFactory(productId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toJson(Lcom/audible/mobile/domain/ProductId;)Ljava/lang/String;
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
