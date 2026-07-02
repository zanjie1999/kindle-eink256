.class public final Lcom/audible/mobile/network/adapters/OrderNumberMoshiAdapter;
.super Ljava/lang/Object;
.source "OrderNumberMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/domain/OrderNumber;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;->CREATOR:Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1}, Lcom/audible/mobile/util/extensions/StringExtensionsKt;->getEmpty(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl$CREATOR;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/OrderNumber;

    move-result-object p1

    return-object p1
.end method

.method public final toJson(Lcom/audible/mobile/domain/OrderNumber;)Ljava/lang/String;
    .locals 1

    const-string v0, "orderNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
