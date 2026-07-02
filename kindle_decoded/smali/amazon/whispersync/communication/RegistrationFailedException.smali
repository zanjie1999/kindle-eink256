.class public Lamazon/whispersync/communication/RegistrationFailedException;
.super Lamazon/whispersync/communication/CommunicationBaseException;
.source "RegistrationFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0xf774d57d82c0a22L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
