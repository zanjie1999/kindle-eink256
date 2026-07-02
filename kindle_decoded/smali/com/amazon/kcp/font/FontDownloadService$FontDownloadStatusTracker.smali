.class Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;
.super Ljava/lang/Object;
.source "FontDownloadService.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/FontDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FontDownloadStatusTracker"
.end annotation


# static fields
.field private static final MIN_PROGRESS_REPORT_INTERVAL_MILLIS:J = 0xfaL


# instance fields
.field private lastProgressUpdate:J

.field private max:J

.field private notification:Lcom/amazon/kcp/font/FontNotification;

.field final synthetic this$0:Lcom/amazon/kcp/font/FontDownloadService;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/font/FontDownloadService;Lcom/amazon/kcp/font/FontNotification;)V
    .locals 2

    .line 335
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->this$0:Lcom/amazon/kcp/font/FontDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 331
    iput-wide v0, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->max:J

    .line 336
    iput-object p2, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->lastProgressUpdate:J

    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    iget-wide v2, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->lastProgressUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 345
    iput-wide v0, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->lastProgressUpdate:J

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    if-eqz v0, :cond_0

    .line 348
    iget-wide v1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->max:J

    long-to-int v2, v1

    long-to-int p2, p1

    invoke-virtual {v0, v2, p2}, Lcom/amazon/kcp/font/FontNotification;->onFontDownloadProgress(II)V

    :cond_0
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p2, "FontDownloadStart"

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 361
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    if-eqz p1, :cond_2

    .line 362
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontNotification;->onFontDownloadStarted()V

    goto :goto_0

    :cond_0
    const-string p2, "FontDownloadSuccess"

    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 365
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    if-eqz p1, :cond_2

    .line 366
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontNotification;->onFontDownloadSuccess()V

    .line 367
    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    goto :goto_0

    :cond_1
    const-string p2, "FontDownloadFailure"

    .line 369
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 370
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    if-eqz p1, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontNotification;->onFontDownloadFailed()V

    .line 372
    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->notification:Lcom/amazon/kcp/font/FontNotification;

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->max:J

    return-void
.end method

.method public setMaxProgress(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 355
    iput-wide p1, p0, Lcom/amazon/kcp/font/FontDownloadService$FontDownloadStatusTracker;->max:J

    return-void
.end method
