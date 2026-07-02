.class public interface abstract Lcom/amazon/ea/util/MessageSender$Callback;
.super Ljava/lang/Object;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/util/MessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract failure(Ljava/lang/Exception;)V
.end method

.method public abstract success(Lorg/json/JSONObject;)V
.end method
