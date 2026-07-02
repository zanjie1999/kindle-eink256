.class interface abstract Lcom/amazon/kindle/services/authentication/ITokenCache;
.super Ljava/lang/Object;
.source "ITokenCache.java"


# virtual methods
.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;
.end method

.method public abstract setValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateDeviceCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            "J",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation
.end method
