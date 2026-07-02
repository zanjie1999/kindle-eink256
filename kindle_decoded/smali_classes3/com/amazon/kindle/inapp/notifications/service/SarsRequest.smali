.class public abstract Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;
.super Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;
.source "SarsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T::",
        "Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;",
        ">",
        "Lcom/amazon/kindle/inapp/notifications/http/GsonRequest<",
        "TS;TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSarsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SarsRequest.kt\ncom/amazon/kindle/inapp/notifications/service/SarsRequest\n*L\n1#1,286:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final CN_ENDPOINT:Ljava/lang/String; = "https://sars-cn.amazon.com/kinapps/%s"

.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

.field private static final EU_ENDPOINT:Ljava/lang/String; = "https://sars-eu.amazon.com/kinapps/%s"

.field private static final FE_ENDPOINT:Ljava/lang/String; = "https://sars-fe.amazon.com/kinapps/%s"

.field private static final GAMMA_ENDPOINT:Ljava/lang/String; = "https://star-actions-relay-service-gamma.amazon.com/kinapps/%s"

.field private static final NEW_CN_ENDPOINT:Ljava/lang/String; = "https://sars-cn.amazon.cn/kinapps/%s"

# The value of this static final field might be set in the static constructor
.field private static final OP_DELETE_ALL_NOTIFICATIONS:Ljava/lang/String; = "notifications/delete/all%s"

# The value of this static final field might be set in the static constructor
.field private static final OP_DELETE_NOTIFICATIONS:Ljava/lang/String; = "notifications/delete%s"

# The value of this static final field might be set in the static constructor
.field private static final OP_GET_NEW_NOTIFICATIONS_COUNT:Ljava/lang/String; = "notifications/new%s"

# The value of this static final field might be set in the static constructor
.field private static final OP_GET_NOTIFICATIONS:Ljava/lang/String; = "notifications%s"

# The value of this static final field might be set in the static constructor
.field private static final OP_POST_NOT_NEW_ALL:Ljava/lang/String; = "notifications/mark-not-new/all%s"

# The value of this static final field might be set in the static constructor
.field private static final OP_POST_NOT_NEW_MULTIPLE:Ljava/lang/String; = "notifications/mark-not-new%s"

# The value of this static final field might be set in the static constructor
.field private static final PLATFORM_QUERY_PARAM:Ljava/lang/String; = "platform"

.field private static final SARS_CHINA_ENDPOINT_WEBLAB:Ljava/lang/String; = "KINDLE_NOTIFICATIONS_SARS_CHINA_WEBLAB_306311"

.field private static final US_ENDPOINT:Ljava/lang/String; = "https://sars.amazon.com/kinapps/%s"

.field private static final res:Landroid/content/res/Resources;

.field private static final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# instance fields
.field private final di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final metricsManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "metricsManager"

    const-string v4, "getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    const-string v0, "notifications/new%s"

    .line 186
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_GET_NEW_NOTIFICATIONS_COUNT:Ljava/lang/String;

    const-string v0, "notifications%s"

    .line 187
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_GET_NOTIFICATIONS:Ljava/lang/String;

    const-string v0, "notifications/mark-not-new/all%s"

    .line 188
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_POST_NOT_NEW_ALL:Ljava/lang/String;

    const-string v0, "notifications/mark-not-new%s"

    .line 189
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_POST_NOT_NEW_MULTIPLE:Ljava/lang/String;

    const-string v0, "notifications/delete%s"

    .line 190
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_DELETE_NOTIFICATIONS:Ljava/lang/String;

    const-string v0, "notifications/delete/all%s"

    .line 191
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_DELETE_ALL_NOTIFICATIONS:Ljava/lang/String;

    const-string v0, "platform"

    .line 204
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->PLATFORM_QUERY_PARAM:Ljava/lang/String;

    .line 205
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 206
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_0
    sput-object v1, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->res:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClazz"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->access$getRes$p(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getUrl(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p4, p5, p6}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 37
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$metricsManager$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$metricsManager$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->metricsManager$delegate:Lkotlin/Lazy;

    .line 83
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TS;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseClazz"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->access$getRes$p(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getUrl(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 37
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$metricsManager$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$metricsManager$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->metricsManager$delegate:Lkotlin/Lazy;

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-void
.end method

.method public static final synthetic access$getOP_DELETE_ALL_NOTIFICATIONS$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_DELETE_ALL_NOTIFICATIONS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOP_DELETE_NOTIFICATIONS$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_DELETE_NOTIFICATIONS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOP_GET_NEW_NOTIFICATIONS_COUNT$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_GET_NEW_NOTIFICATIONS_COUNT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOP_GET_NOTIFICATIONS$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_GET_NOTIFICATIONS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOP_POST_NOT_NEW_ALL$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_POST_NOT_NEW_ALL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOP_POST_NOT_NEW_MULTIPLE$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->OP_POST_NOT_NEW_MULTIPLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPLATFORM_QUERY_PARAM$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->PLATFORM_QUERY_PARAM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRes$cp()Landroid/content/res/Resources;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static final synthetic access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method private final appVersionNumber()Ljava/lang/String;
    .locals 2

    .line 181
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getKindleVersionNumberCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->metricsManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    return-object v0
.end method

.method private final languageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale.country"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/16 v1, 0x2d

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    const-string v4, "locale.variant"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    const-string v1, "-x-"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "buf.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static bridge synthetic languageTag$default(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->languageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: languageTag"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getSARS_OPERATION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricErrorName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getSARS_OPERATION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method protected deliverResponse(Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getSARS_OPERATION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricSuccessName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getSARS_OPERATION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    invoke-super {p0, p1}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->deliverResponse(Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;)V

    return-void
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->deliverResponse(Lcom/amazon/kindle/inapp/notifications/http/IWithHeaders;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-static {p0, v2, v1, v2}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->languageTag$default(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 113
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cookie"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 114
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getCUSTOMER_ID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    const-string v3, "InAppNotificationsPlugin\u2026tSDK().applicationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    const-string v3, "InAppNotificationsPlugin\u2026Manager.activeUserAccount"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 115
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getDEVICE_SERIAL_NUMBER()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 116
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getDEVICE_TYPE()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->di:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 117
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getACCEPTS()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getFILE_FORMAT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 118
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getCONTENT_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getFILE_FORMAT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 119
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->getAPP_VERSION()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->appVersionNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 111
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMetricErrorName()Ljava/lang/String;
.end method

.method protected abstract getMetricSuccessName()Ljava/lang/String;
.end method

.method protected final getMetricSuccessRateName()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricSuccessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMetricTimerName()Ljava/lang/String;
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricsManager()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getSARS_OPERATION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->getMetricTimerName()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    invoke-super {p0, p1}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
