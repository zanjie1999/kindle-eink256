.class public Lcom/amazon/whispersync/communication/ProtocolException;
.super Lamazon/whispersync/communication/CommunicationBaseException;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
