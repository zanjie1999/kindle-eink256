.class public final Lcom/amazon/kindle/inapp/notifications/service/DeleteAllRequest;
.super Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;
.source "DeleteAllRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/inapp/notifications/service/SarsRequest<",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteAllRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteAllRequest.kt\ncom/amazon/kindle/inapp/notifications/service/DeleteAllRequest\n*L\n1#1,47:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getOP_DELETE_ALL_NOTIFICATIONS()Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    const-class v6, Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    .line 16
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p2}, Lcom/amazon/kindle/inapp/notifications/service/DeleteAllRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getDELETE_ALL_NOTIFICATIONS_FAILURE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getDELETE_ALL_NOTIFICATIONS_SUCCESS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getDELETE_ALL_NOTIFICATIONS_TIME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
