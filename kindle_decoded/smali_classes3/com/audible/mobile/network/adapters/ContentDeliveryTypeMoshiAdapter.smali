.class public final Lcom/audible/mobile/network/adapters/ContentDeliveryTypeMoshiAdapter;
.super Ljava/lang/Object;
.source "ContentDeliveryTypeMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentDeliveryType;
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p1}, Lcom/audible/mobile/domain/ContentDeliveryType;->safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentDeliveryType;

    move-result-object p1

    const-string v0, "ContentDeliveryType.safeValueOf(json)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/audible/mobile/domain/ContentDeliveryType;->Unknown:Lcom/audible/mobile/domain/ContentDeliveryType;

    :goto_0
    return-object p1
.end method
