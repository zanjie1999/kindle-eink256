.class public Lcom/amazon/bookwizard/service/GetRatingsRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetRatingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;,
        Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;",
        "Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/util/Collection<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 45
    new-instance v3, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;

    const/4 v0, 0x0

    invoke-direct {v3, p2, v0}, Lcom/amazon/bookwizard/service/GetRatingsRequest$GetRatingsViewBody;-><init>(Ljava/util/Collection;Lcom/amazon/bookwizard/service/GetRatingsRequest$1;)V

    const-class v4, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;

    const-string v2, "GetView"

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

    const-string v0, "GetRatingsViewFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRatingsViewSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRatingsViewTime"

    return-object v0
.end method
