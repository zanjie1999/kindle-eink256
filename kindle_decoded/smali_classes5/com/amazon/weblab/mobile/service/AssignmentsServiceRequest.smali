.class Lcom/amazon/weblab/mobile/service/AssignmentsServiceRequest;
.super Lcom/amazon/weblab/mobile/service/ServiceRequest;
.source "AssignmentsServiceRequest.java"


# static fields
.field private static final ASSIGNMENT_PATH:Ljava/lang/String; = "assignments/v2"

.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "content-type"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final WEBLABS:Ljava/lang/String; = "Weblabs"

.field private static final WEBLAB_PARAM:Ljava/lang/String; = "wl[]"


# instance fields
.field private mWeblabs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ServiceRequest;-><init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V

    if-eqz p4, :cond_0

    .line 49
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    iput-object p4, p0, Lcom/amazon/weblab/mobile/service/AssignmentsServiceRequest;->mWeblabs:Ljava/util/Collection;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Weblabs can\'t be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method appendParamToUrl(Landroid/net/Uri$Builder;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->appendParamToUrl(Landroid/net/Uri$Builder;)V

    const-string v0, "assignments/v2"

    .line 61
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method constructPayload()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/AssignmentsServiceRequest;->mWeblabs:Ljava/util/Collection;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Weblabs"

    .line 82
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mClientIdentifier:Ljava/lang/String;

    const-string v3, "ServiceRequestJsonEncodingException"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 86
    new-instance v1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    const-string v2, "Cannot generate JSON object."

    invoke-direct {v1, v2, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getHttpHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-super {p0}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->getHttpHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "content-type"

    const-string v2, "application/json"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
