.class public Lcom/amazon/readingactions/helpers/SidecarRetriever;
.super Ljava/lang/Object;
.source "SidecarRetriever.java"

# interfaces
.implements Lcom/amazon/readingactions/helpers/ISidecarRetriever;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/readingactions/helpers/SidecarRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/helpers/SidecarRetriever;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private retrieveFromCache(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 3

    .line 39
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/amazon/readingactions/helpers/SidecarRetriever;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking cache for sidecar. [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Asin"

    .line 43
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContentType"

    .line 44
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/SidecarCacheManager;->getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    return-object p1
.end method

.method private retrieveFromDisk(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 4

    const-string v0, "SidecarFoundInCache"

    .line 51
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 52
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/amazon/readingactions/helpers/SidecarRetriever;->TAG:Ljava/lang/String;

    const-string v2, "Could not find sidecar in cache - checking on disk."

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {p1, v0}, Lcom/amazon/readingactions/sidecar/parsing/SidecarParser;->parse(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v0

    const-string v2, "SidecarFound"

    if-nez v0, :cond_1

    .line 59
    sget-object p1, Lcom/amazon/readingactions/helpers/SidecarRetriever;->TAG:Ljava/lang/String;

    const-string v3, "No Sidecar found!"

    invoke-static {p1, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    sget-object v1, Lcom/amazon/readingactions/helpers/SidecarRetriever;->TAG:Ljava/lang/String;

    const-string v3, "Sidecar Found"

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/readingactions/helpers/SidecarCacheManager;->putSidecar(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/Sidecar;)V

    .line 67
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p2, v2, p1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public retrieve(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    new-instance v0, Lcom/amazon/startactions/metrics/Metric;

    const-string v1, "StartActionsSidecarPresence"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/SidecarRetriever;->retrieveFromCache(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p1, "SidecarFound"

    .line 26
    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string p1, "SidecarFoundInCache"

    .line 27
    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/SidecarRetriever;->retrieveFromDisk(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    return-object v1
.end method
