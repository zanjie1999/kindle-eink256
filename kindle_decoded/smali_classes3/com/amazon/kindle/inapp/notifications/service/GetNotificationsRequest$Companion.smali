.class public final Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;
.super Ljava/lang/Object;
.source "GetNotificationsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetNotificationsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetNotificationsRequest.kt\ncom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion\n*L\n1#1,88:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getParameterMap(Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->getParameterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final getLANGUAGE_QUERY_PARAM()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->access$getLANGUAGE_QUERY_PARAM$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getLIMIT_QUERY_PARAM()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->access$getLIMIT_QUERY_PARAM$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getLanguageString()Ljava/lang/String;
    .locals 5

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "locale"

    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale.language"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "locale.country"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getPAGE_QUERY_PARAM()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->access$getPAGE_QUERY_PARAM$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getParameterMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 70
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->getLANGUAGE_QUERY_PARAM()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->getLanguageString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->getLIMIT_QUERY_PARAM()Ljava/lang/String;

    move-result-object p1

    const-string v1, "15"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->getLIMIT_QUERY_PARAM()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->getPAGE_QUERY_PARAM()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method
