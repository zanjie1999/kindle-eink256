.class public Lamazon/whispersync/communication/ConnectionInterruptedException;
.super Lamazon/whispersync/communication/CommunicationBaseException;
.source "ConnectionInterruptedException.java"


# instance fields
.field private mConnectionTerminationDetails:Lamazon/whispersync/communication/connection/ConnectionClosedDetails;


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamazon/whispersync/communication/ConnectionInterruptedException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lamazon/whispersync/communication/ConnectionInterruptedException;->mConnectionTerminationDetails:Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
