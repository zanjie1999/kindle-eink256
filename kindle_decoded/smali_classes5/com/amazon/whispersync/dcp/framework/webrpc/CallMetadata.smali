.class public interface abstract Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;
.super Ljava/lang/Object;
.source "CallMetadata.java"


# virtual methods
.method public abstract allowAnonymousCall()Z
.end method

.method public abstract getAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;
.end method

.method public abstract getBaseUri()Ljava/net/URI;
.end method

.method public abstract getDispatcher()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public abstract isCompressionEnabled()Z
.end method

.method public abstract isSuccessfulResponseCode(I)Z
.end method

.method public abstract needToReadResponseBody()Z
.end method
