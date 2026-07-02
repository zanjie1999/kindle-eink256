.class public interface abstract Lcom/audible/mobile/downloader/interfaces/DownloadCommand;
.super Ljava/lang/Object;
.source "DownloadCommand.java"


# static fields
.field public static final DEFAULT_TIMEOUT_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->DEFAULT_TIMEOUT_MS:I

    return-void
.end method


# virtual methods
.method public abstract getConnectionTimeout()I
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPayload()Ljava/io/InputStream;
.end method

.method public abstract getReadTimeout()I
.end method

.method public abstract getUrl()Ljava/net/URL;
.end method

.method public abstract isForceRefresh()Z
.end method
