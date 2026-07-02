.class Lcom/amazon/weblab/mobile/service/TriggersServiceRequest;
.super Lcom/amazon/weblab/mobile/service/ServiceRequest;
.source "TriggersServiceRequest.java"


# static fields
.field private static final ALLOCATION_VERSION:Ljava/lang/String; = "AllocationVersion"

.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "content-type"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final TREATMENT:Ljava/lang/String; = "Treatment"

.field private static final TRIGGERS:Ljava/lang/String; = "Triggers"

.field private static final TRIGGER_PATH:Ljava/lang/String; = "triggers/v2"

.field private static final WEBLAB:Ljava/lang/String; = "Weblab"


# instance fields
.field private mTriggers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
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
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ServiceRequest;-><init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V

    if-eqz p4, :cond_1

    .line 58
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iput-object p4, p0, Lcom/amazon/weblab/mobile/service/TriggersServiceRequest;->mTriggers:Ljava/util/Collection;

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "triggers can\'t be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "triggers can\'t null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method appendParamToUrl(Landroid/net/Uri$Builder;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->appendParamToUrl(Landroid/net/Uri$Builder;)V

    const-string/jumbo v0, "triggers/v2"

    .line 72
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method constructPayload()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/TriggersServiceRequest;->mTriggers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 95
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "Weblab"

    .line 96
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "Treatment"

    .line 97
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "AllocationVersion"

    .line 98
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Triggers"

    .line 104
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
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

    .line 80
    invoke-super {p0}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->getHttpHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "content-type"

    const-string v2, "application/json"

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
