.class public Lcom/amazon/kindle/io/ProgressTrackingInputStream;
.super Ljava/io/InputStream;
.source "ProgressTrackingInputStream.java"


# instance fields
.field private proxy:Ljava/io/InputStream;

.field private request:Lcom/amazon/kindle/webservices/IWebRequest;

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebRequest;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->trackers:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_1

    .line 34
    iget-object v1, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->trackers:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    if-eqz v2, :cond_0

    .line 37
    iget-object v3, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->trackers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    if-eqz v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_1
    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    .line 66
    iget-object p2, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->trackers:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    if-eqz p3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    int-to-long v1, p1

    invoke-interface {p3, v0, v1, v2}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/io/ProgressTrackingInputStream;->proxy:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
