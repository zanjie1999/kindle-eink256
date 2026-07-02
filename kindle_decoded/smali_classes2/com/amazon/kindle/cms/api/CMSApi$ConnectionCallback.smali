.class public interface abstract Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;
.super Ljava/lang/Object;
.source "CMSApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CMSApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallback"
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/amazon/kindle/cms/api/CMSServer;)V
.end method

.method public abstract onConnectException(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract onDisconnect()V
.end method
