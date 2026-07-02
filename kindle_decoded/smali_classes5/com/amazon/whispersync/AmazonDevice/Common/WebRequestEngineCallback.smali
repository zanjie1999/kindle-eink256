.class public abstract Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;
.super Ljava/lang/Object;
.source "WebRequestEngineCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract authenticationFailed()V
.end method

.method public abstract bodyChunkReceived([BI)V
.end method

.method public abstract headersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
.end method

.method public abstract networkError()V
.end method

.method public abstract requestComplete()V
.end method

.method public abstract shouldPassBodyChunks()Z
.end method
