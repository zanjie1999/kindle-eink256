.class public Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "CountInputStreamEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;
    }
.end annotation


# static fields
.field private static final MIN_PROGRESS_REPORT_INTERVAL_MILLIS:J = 0x1f4L


# instance fields
.field private lastProgressUpdate:J

.field private length:J

.field private onProgress:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 30
    iput-wide p2, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->length:J

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->lastProgressUpdate:J

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->lastProgressUpdate:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->lastProgressUpdate:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;)Lcom/amazon/foundation/ICallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->onProgress:Lcom/amazon/foundation/ICallback;

    return-object p0
.end method


# virtual methods
.method public setStatusTracker(Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;Lcom/amazon/foundation/ICallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->statusTracker:Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->onProgress:Lcom/amazon/foundation/ICallback;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity$CountOutputStream;-><init>(Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;Ljava/io/OutputStream;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
