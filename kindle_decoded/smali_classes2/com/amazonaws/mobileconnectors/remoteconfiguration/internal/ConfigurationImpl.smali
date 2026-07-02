.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;
.super Ljava/lang/Object;
.source "ConfigurationImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;


# instance fields
.field private final json:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->json:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->timestamp:Ljava/util/Date;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The JSON may not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAsJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->json:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The configuration is invalid."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAsJsonString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;->timestamp:Ljava/util/Date;

    return-object v0
.end method
