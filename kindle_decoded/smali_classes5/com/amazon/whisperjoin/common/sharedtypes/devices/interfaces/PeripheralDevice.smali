.class public interface abstract Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;
.super Ljava/lang/Object;
.source "PeripheralDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whisperbridge/constants/Command;",
            "Ljava/lang/Object;",
            "Lcom/google/common/reflect/TypeToken<",
            "TO;>;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
.end method
