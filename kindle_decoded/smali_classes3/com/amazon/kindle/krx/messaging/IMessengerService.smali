.class public interface abstract Lcom/amazon/kindle/krx/messaging/IMessengerService;
.super Ljava/lang/Object;
.source "IMessengerService.java"


# virtual methods
.method public abstract isOdotSupported()Z
.end method

.method public varargs abstract send(Landroid/content/Context;Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation
.end method
