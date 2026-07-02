.class public Lcom/amazon/xray/metrics/BookMetricUtil;
.super Ljava/lang/Object;
.source "BookMetricUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.metrics.BookMetricUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createCurrentBookMetric(Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;
    .locals 3

    .line 30
    new-instance v0, Lcom/amazon/xray/metrics/Metric;

    invoke-direct {v0, p0}, Lcom/amazon/xray/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Date"

    invoke-virtual {v0, v1, p0}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    if-nez p0, :cond_0

    .line 37
    sget-object p0, Lcom/amazon/xray/metrics/BookMetricUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Book is null cannot record asin and embeddedId for operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/Metric;->getOperation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 40
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmbeddedId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContentType"

    invoke-virtual {v0, v1, p0}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
