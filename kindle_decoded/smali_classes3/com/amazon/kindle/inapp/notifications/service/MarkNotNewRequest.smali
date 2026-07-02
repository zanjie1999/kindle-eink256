.class public final Lcom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest;
.super Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;
.source "MarkNotNewRequest.kt"


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
    value = "SMAP\nMarkNotNewRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkNotNewRequest.kt\ncom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest\n*L\n1#1,48:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->Companion:Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getOP_POST_NOT_NEW_MULTIPLE()Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    const-class v6, Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v7, p2

    move-object v8, p3

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/kindle/inapp/notifications/service/EmptyResponse;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getMARK_NOT_NEW_FAILURE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getMARK_NOT_NEW_SUCCESS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getMARK_NOT_NEW_TIME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
