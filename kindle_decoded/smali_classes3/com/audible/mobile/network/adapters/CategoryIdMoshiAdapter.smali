.class public final Lcom/audible/mobile/network/adapters/CategoryIdMoshiAdapter;
.super Ljava/lang/Object;
.source "CategoryIdMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/domain/CategoryId;
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/CategoryId;

    move-result-object p1

    const-string v0, "ImmutableCategoryIdImpl.nullSafeFactory(id)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toJson(Lcom/audible/mobile/domain/CategoryId;)Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
