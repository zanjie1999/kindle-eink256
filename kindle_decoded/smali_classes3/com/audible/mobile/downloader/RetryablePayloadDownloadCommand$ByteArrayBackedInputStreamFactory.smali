.class final Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;
.super Ljava/lang/Object;
.source "RetryablePayloadDownloadCommand.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByteArrayBackedInputStreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;->bytes:[B

    return-void
.end method


# virtual methods
.method public get()Ljava/io/InputStream;
    .locals 2

    .line 73
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
