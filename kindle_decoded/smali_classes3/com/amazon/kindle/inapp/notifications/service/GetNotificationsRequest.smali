.class public final Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;
.super Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;
.source "GetNotificationsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;,
        Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/inapp/notifications/service/SarsRequest<",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LANGUAGE_QUERY_PARAM:Ljava/lang/String; = "lang"

.field private static final LIMIT_FOR_FIRST_PAGE:Ljava/lang/String; = "15"

.field private static final LIMIT_FOR_NEXT_PAGE:Ljava/lang/String; = "8"

# The value of this static final field might be set in the static constructor
.field private static final LIMIT_QUERY_PARAM:Ljava/lang/String; = "limit"

# The value of this static final field might be set in the static constructor
.field private static final PAGE_QUERY_PARAM:Ljava/lang/String; = "page"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;

    const-string v0, "lang"

    .line 63
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->LANGUAGE_QUERY_PARAM:Ljava/lang/String;

    const-string v0, "page"

    .line 64
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->PAGE_QUERY_PARAM:Ljava/lang/String;

    const-string v0, "limit"

    .line 65
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->LIMIT_QUERY_PARAM:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getOP_GET_NOTIFICATIONS()Ljava/lang/String;

    move-result-object v3

    .line 24
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;

    invoke-static {v0, p4}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;->access$getParameterMap(Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$Companion;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 25
    const-class v5, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getLANGUAGE_QUERY_PARAM$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->LANGUAGE_QUERY_PARAM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLIMIT_QUERY_PARAM$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->LIMIT_QUERY_PARAM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPAGE_QUERY_PARAM$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;->PAGE_QUERY_PARAM:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_FAILURE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_SUCCESS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_TIME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
