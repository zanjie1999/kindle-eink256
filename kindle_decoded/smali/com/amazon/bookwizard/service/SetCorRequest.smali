.class public Lcom/amazon/bookwizard/service/SetCorRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "SetCorRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;",
        "Lcom/amazon/bookwizard/service/EmptyResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/EmptyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v3, Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;

    const/4 v0, 0x0

    invoke-direct {v3, p2, v0}, Lcom/amazon/bookwizard/service/SetCorRequest$SetCorBody;-><init>(Ljava/lang/String;Lcom/amazon/bookwizard/service/SetCorRequest$1;)V

    const-class v4, Lcom/amazon/bookwizard/service/EmptyResponse;

    const-string v2, "SetCOR"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "SetCorFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "SetCorSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "SetCorTime"

    return-object v0
.end method
