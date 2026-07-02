.class public final Lcom/audible/license/repository/typeconverters/DrmTypeConverter;
.super Ljava/lang/Object;
.source "DrmTypeConverter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .locals 1

    .line 9
    invoke-static {p1}, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object p1

    const-string v0, "DrmType.safeValueOf(drmType)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString(Lcom/audible/mobile/contentlicense/networking/request/DrmType;)Ljava/lang/String;
    .locals 1

    const-string v0, "drmType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
