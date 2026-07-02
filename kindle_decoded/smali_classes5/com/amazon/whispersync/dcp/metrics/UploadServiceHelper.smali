.class public final Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper;
.super Ljava/lang/Object;
.source "UploadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadResponseListener;,
        Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateUniqueUploadTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 55
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper;->standardUploadDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static standardUploadDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy.MM.dd.HH.mm.ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setUploadResponseListener(Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadResponseListener;)V
    .locals 0

    return-void
.end method

.method public uploadLogs(Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;)V
    .locals 0

    return-void
.end method

.method public uploadLogs(Ljava/lang/String;Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;)V
    .locals 0

    return-void
.end method

.method public uploadMetrics(Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;)V
    .locals 0

    return-void
.end method

.method public uploadMetrics(Ljava/lang/String;Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadIdentity;)V
    .locals 0

    return-void
.end method
