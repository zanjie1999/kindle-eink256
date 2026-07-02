.class public final Lcom/audible/mobile/network/adapters/OriginTypeMoshiAdapter;
.super Ljava/lang/Object;
.source "OriginTypeMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/domain/OriginType;
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p1}, Lcom/audible/mobile/domain/OriginType;->safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/OriginType;

    move-result-object p1

    const-string v0, "OriginType.safeValueOf(json)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/audible/mobile/domain/OriginType;->Unknown:Lcom/audible/mobile/domain/OriginType;

    :goto_0
    return-object p1
.end method
