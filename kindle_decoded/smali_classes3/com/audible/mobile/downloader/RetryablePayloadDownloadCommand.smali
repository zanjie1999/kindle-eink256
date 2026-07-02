.class abstract Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;
.super Lcom/audible/mobile/downloader/BaseGETDownloadCommand;
.source "RetryablePayloadDownloadCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;
    }
.end annotation


# static fields
.field private static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inputStreamFactory:Lcom/audible/mobile/framework/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/framework/Factory<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/net/URL;Lcom/audible/mobile/framework/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/audible/mobile/framework/Factory<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;->headers:Ljava/util/Map;

    .line 42
    iput-object p2, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;->inputStreamFactory:Lcom/audible/mobile/framework/Factory;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;[B)V
    .locals 1

    .line 31
    new-instance v0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;

    invoke-direct {v0, p2}, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand$ByteArrayBackedInputStreamFactory;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;-><init>(Ljava/net/URL;Lcom/audible/mobile/framework/Factory;)V

    if-eqz p2, :cond_0

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;->headers:Ljava/util/Map;

    .line 35
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Length"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getPayload()Ljava/io/InputStream;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;->inputStreamFactory:Lcom/audible/mobile/framework/Factory;

    invoke-interface {v0}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
