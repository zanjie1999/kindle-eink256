.class public abstract Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;
.super Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;
.source "AbstractPostDownloadCommand.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadCommand;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/util/UTF8Charset;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;-><init>(Ljava/net/URL;[B)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;[B)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/RetryablePayloadDownloadCommand;-><init>(Ljava/net/URL;[B)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method
