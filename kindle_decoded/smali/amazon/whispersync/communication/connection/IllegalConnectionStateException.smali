.class public Lamazon/whispersync/communication/connection/IllegalConnectionStateException;
.super Lamazon/whispersync/communication/CommunicationBaseException;
.source "IllegalConnectionStateException.java"


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lamazon/whispersync/communication/CommunicationBaseException;-><init>(Ljava/lang/String;)V

    .line 35
    iput p2, p0, Lamazon/whispersync/communication/connection/IllegalConnectionStateException;->mState:I

    return-void
.end method
