.class public Lcom/amazon/bookwizard/service/GetGenresRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetGenresRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetGenresRequest$GenreItemList;,
        Lcom/amazon/bookwizard/service/GetGenresRequest$GenreData;,
        Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;,
        Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;",
        "Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;",
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
            "Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 43
    new-instance v3, Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;

    invoke-direct {v3}, Lcom/amazon/bookwizard/service/GetGenresRequest$GetGenresBody;-><init>()V

    const-class v4, Lcom/amazon/bookwizard/service/GetGenresRequest$GenreView;

    const-string v2, "GetView"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetGenresFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetGenresSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetGenresTime"

    return-object v0
.end method
