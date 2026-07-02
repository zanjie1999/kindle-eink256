.class public final Lcom/audible/mobile/util/typeconverter/AcrTypeConverter;
.super Ljava/lang/Object;
.source "AcrTypeConverter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;
    .locals 1

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    const-string v0, "ImmutableACRImpl.nullSafeFactory(str)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString(Lcom/audible/mobile/domain/ACR;)Ljava/lang/String;
    .locals 1

    const-string v0, "acr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "acr.id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
