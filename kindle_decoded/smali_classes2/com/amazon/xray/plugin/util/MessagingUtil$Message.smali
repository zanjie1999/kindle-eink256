.class public interface abstract Lcom/amazon/xray/plugin/util/MessagingUtil$Message;
.super Ljava/lang/Object;
.source "MessagingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/plugin/util/MessagingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Message"
.end annotation


# virtual methods
.method public abstract getPayload()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method
