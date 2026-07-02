.class public Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;
.super Ljava/lang/Object;
.source "HostRegexToRegionMapping.java"


# instance fields
.field private final hostNameRegex:Ljava/lang/String;

.field private final regionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;->hostNameRegex:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;->regionName:Ljava/lang/String;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid HostRegexToRegionMapping configuration: regionName must be non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHostNameRegex()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;->hostNameRegex:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;->regionName:Ljava/lang/String;

    return-object v0
.end method
