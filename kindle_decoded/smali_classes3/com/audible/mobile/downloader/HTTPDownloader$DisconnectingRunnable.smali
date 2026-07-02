.class Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;
.super Ljava/lang/Object;
.source "HTTPDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/HTTPDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingRunnable"
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p3, p0, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;->connection:Ljava/net/HttpURLConnection;

    .line 665
    iput-object p2, p0, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;->is:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 672
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method
