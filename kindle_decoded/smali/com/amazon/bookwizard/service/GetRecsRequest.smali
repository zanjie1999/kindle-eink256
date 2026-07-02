.class public Lcom/amazon/bookwizard/service/GetRecsRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetRecsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;,
        Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetRecsBody;",
        "Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_ID:Ljava/lang/String; = "recommendationsView"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Book;",
            "Lcom/amazon/bookwizard/data/Rating;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v3, Lcom/amazon/bookwizard/service/GetRecsBody;

    const-string/jumbo v0, "recommendationsView"

    invoke-direct {v3, v0, p2}, Lcom/amazon/bookwizard/service/GetRecsBody;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-class v4, Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;

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

    const-string v0, "GetRecsViewFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRecsViewSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRecsViewTime"

    return-object v0
.end method
