.class public interface abstract Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;
.super Ljava/lang/Object;
.source "DcpAccountManager.java"


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
.end method

.method public abstract getPrimaryAccount()Ljava/lang/String;
.end method

.method public abstract getToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isDeviceRegistered()Z
.end method
