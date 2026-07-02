.class public interface abstract Lcom/amazon/whisperbridge/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;,
        Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;
    }
.end annotation


# virtual methods
.method public abstract close(Ljava/lang/Object;)V
.end method

.method public abstract connect(Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onProvisioningComplete(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendCommand(Ljava/lang/Object;Lcom/amazon/whisperbridge/constants/Command;[B)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperbridge/constants/Command;",
            "[B)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setProvisionableEventNotificationCallback(Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startProvisioning(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ProvisioningStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
