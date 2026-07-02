.class public Lcom/amazon/whispersync/communication/KnownSizeInputStreamMessage;
.super Lcom/amazon/whispersync/communication/InputStreamMessageImpl;
.source "KnownSizeInputStreamMessage.java"


# instance fields
.field private final mPayloadSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;-><init>(Ljava/io/InputStream;)V

    .line 30
    iput p2, p0, Lcom/amazon/whispersync/communication/KnownSizeInputStreamMessage;->mPayloadSize:I

    return-void
.end method


# virtual methods
.method public getPayloadSize()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/whispersync/communication/KnownSizeInputStreamMessage;->mPayloadSize:I

    return v0
.end method
