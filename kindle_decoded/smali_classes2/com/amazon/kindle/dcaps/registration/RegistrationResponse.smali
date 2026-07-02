.class public Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;
.super Ljava/lang/Object;
.source "RegistrationResponse.java"


# instance fields
.field private code:Ljava/lang/String;

.field private csi:Ljava/lang/String;

.field private details:Lorg/json/JSONObject;

.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "success"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iput-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->type:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "capabilitySetId"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->csi:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "error"

    .line 87
    iput-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->type:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "code"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->code:Ljava/lang/String;

    const-string v0, "message"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->message:Ljava/lang/String;

    const-string v0, "details"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->details:Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCsi()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->csi:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetails()Lorg/json/JSONObject;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->details:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->type:Ljava/lang/String;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
