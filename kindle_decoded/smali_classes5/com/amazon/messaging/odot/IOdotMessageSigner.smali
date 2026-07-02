.class interface abstract Lcom/amazon/messaging/odot/IOdotMessageSigner;
.super Ljava/lang/Object;
.source "IOdotMessageSigner.java"


# virtual methods
.method public abstract generateMessageSignatureViaMAP(Ljava/lang/String;Ljava/lang/String;[BJLjava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/messaging/odot/OdotClientException;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public abstract getAdpTokenFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getSignatureFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
.end method
