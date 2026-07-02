.class public Lcom/amazon/messaging/odot/webservices/util/MetricNameGenerator;
.super Ljava/lang/Object;
.source "MetricNameGenerator.java"


# direct methods
.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[^A-Za-z0-9_\\-]"

    const-string v1, "_"

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateMetricNameFromNonRestUrl(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 13
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-string p0, "%s_%s_%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/messaging/odot/webservices/util/MetricNameGenerator;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
