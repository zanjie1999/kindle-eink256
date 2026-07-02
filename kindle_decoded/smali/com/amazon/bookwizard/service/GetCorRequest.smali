.class public Lcom/amazon/bookwizard/service/GetCorRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetCorRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Ljava/lang/Object;",
        "Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-class v4, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    const-string v2, "GetCOR"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p2}, Lcom/amazon/bookwizard/service/GetCorRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetCorFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetCorSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetCorTime"

    return-object v0
.end method
