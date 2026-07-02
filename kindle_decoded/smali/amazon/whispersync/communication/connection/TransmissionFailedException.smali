.class public Lamazon/whispersync/communication/connection/TransmissionFailedException;
.super Lamazon/whispersync/communication/CommunicationBaseException;
.source "TransmissionFailedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
