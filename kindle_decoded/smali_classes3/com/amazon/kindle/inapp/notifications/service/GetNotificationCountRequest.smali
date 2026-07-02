.class public final Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest;
.super Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;
.source "GetNotificationCountRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/inapp/notifications/service/SarsRequest<",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetNotificationCountRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetNotificationCountRequest.kt\ncom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest\n*L\n1#1,55:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getOP_GET_NEW_NOTIFICATIONS_COUNT()Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    const-class v5, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p2}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_COUNT_FAILURE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_COUNT_SUCCESS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_COUNT_TIME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
