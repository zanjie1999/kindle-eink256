.class public interface abstract Lcom/amazon/kindle/krx/messaging/IMessagingManager;
.super Ljava/lang/Object;
.source "IMessagingManager.java"


# virtual methods
.method public abstract isOdotSupported()Z
.end method

.method public abstract register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V
.end method

.method public varargs abstract send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation
.end method
