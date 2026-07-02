.class public Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;
.super Ljava/lang/Object;
.source "RegistrationPayload.java"


# instance fields
.field private capabilities:Lorg/json/JSONObject;

.field private clientVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->setCapabilities(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->setClientVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->capabilities:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object v1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->clientVersion:Ljava/lang/String;

    const-string v2, "client_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->asJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCapabilities(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->capabilities:Lorg/json/JSONObject;

    const-string v1, "attributes"

    .line 84
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->capabilities:Lorg/json/JSONObject;

    const-string v0, "schema"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->clientVersion:Ljava/lang/String;

    return-void
.end method
