.class public Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;
.super Lcom/amazon/bookwizard/service/SarsRequest;
.source "GetLaunchInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/SarsRequest<",
        "Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;",
        "Lcom/amazon/bookwizard/service/LaunchInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VERSION:Ljava/lang/String; = "1.1"

.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/amazon/bookwizard/service/TextAssets;

    new-instance v2, Lcom/amazon/bookwizard/service/TextAssetsAdapter;

    invoke-direct {v2}, Lcom/amazon/bookwizard/service/TextAssetsAdapter;-><init>()V

    .line 28
    invoke-virtual {v2}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 29
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/LaunchInfoContext;Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/amazon/bookwizard/service/LaunchInfoContext;",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "Lcom/amazon/bookwizard/service/LaunchInfo;",
            ">;)V"
        }
    .end annotation

    const-string v3, "1.1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p3

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/LaunchInfoContext;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/LaunchInfoContext;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/IDeviceInformation;",
            "Lcom/amazon/bookwizard/service/LaunchInfoContext;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/amazon/bookwizard/service/LaunchInfo;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 80
    sget-object v1, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;

    invoke-direct {v4, p2, p3}, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest$GetLaunchInfoBody;-><init>(Lcom/amazon/bookwizard/service/LaunchInfoContext;Ljava/lang/String;)V

    const-class v5, Lcom/amazon/bookwizard/service/LaunchInfo;

    const-string v3, "GetLaunchInfo"

    move-object v0, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazon/bookwizard/service/SarsRequest;-><init>(Lcom/google/gson/Gson;Lcom/amazon/kindle/krx/application/IDeviceInformation;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getMetricErrorName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetLaunchInfoFailure"

    return-object v0
.end method

.method protected getMetricSuccessName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetLaunchInfoSuccess"

    return-object v0
.end method

.method protected getMetricTimerName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetLaunchInfoTime"

    return-object v0
.end method
