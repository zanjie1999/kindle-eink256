.class public Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityWithMessageId;
.super Lcom/amazon/whispersync/communication/MessageIdentity;
.source "BufferedMessageManagerBase.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageIdentityKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessageIdentityWithMessageId"
.end annotation


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/identity/EndpointIdentity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/communication/MessageIdentity;-><init>(Lamazon/whispersync/communication/identity/EndpointIdentity;I)V

    return-void
.end method
