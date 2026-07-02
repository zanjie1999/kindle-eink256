.class public Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;
.super Ljava/lang/Object;
.source "MetricNameGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[^A-Za-z0-9_\\-]"

    const-string v1, "_"

    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateMetricNameFromNonRestUrl(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 10
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "%s_%s_%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
