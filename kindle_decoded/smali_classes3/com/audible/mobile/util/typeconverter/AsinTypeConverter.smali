.class public final Lcom/audible/mobile/util/typeconverter/AsinTypeConverter;
.super Ljava/lang/Object;
.source "AsinTypeConverter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asinToString(Lcom/audible/mobile/domain/Asin;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final fromString(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 11
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    const-string v0, "ImmutableAsinImpl.nullSafeFactory(value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
