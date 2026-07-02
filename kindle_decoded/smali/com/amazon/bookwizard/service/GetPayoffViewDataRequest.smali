.class public Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetPayoffViewDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;",
        "Lcom/amazon/bookwizard/service/PayoffViewData;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP:Ljava/lang/String; = "GetPayoffViewData"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/amazon/bookwizard/service/StepFlavor;",
            "Ljava/util/Collection<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/PayoffViewData;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v3, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p3, v0}, Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$GetPayoffViewBody;-><init>(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/Collection;Lcom/amazon/bookwizard/service/GetPayoffViewDataRequest$1;)V

    const-class v4, Lcom/amazon/bookwizard/service/PayoffViewData;

    const-string v2, "GetPayoffViewData"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetPayoffViewDataFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetPayoffViewDataSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetPayoffViewDataTime"

    return-object v0
.end method
