.class public abstract Lcom/amazon/ea/messaging/JsonObjectMessage;
.super Ljava/lang/Object;
.source "JsonObjectMessage.java"

# interfaces
.implements Lcom/amazon/ea/messaging/IMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getJsonObject()Lorg/json/JSONObject;
.end method

.method public final getPayload()[B
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
