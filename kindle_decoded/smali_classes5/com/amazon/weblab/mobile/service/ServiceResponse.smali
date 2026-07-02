.class Lcom/amazon/weblab/mobile/service/ServiceResponse;
.super Ljava/lang/Object;
.source "ServiceResponse.java"


# static fields
.field private static final CACHE_CONTROL_KEY:Ljava/lang/String; = "Cache-Control"

.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final MAX_AGE_PREFIX:Ljava/lang/String; = "max-age"


# instance fields
.field private final mCacheControl:Lcom/amazon/weblab/mobile/settings/Interval;

.field private final mTreatments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/service/ServiceAssignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceResponse;->mTreatments:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceResponse;->mCacheControl:Lcom/amazon/weblab/mobile/settings/Interval;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "Content-Type"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "application/json"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->getCacheControlValue(Ljava/util/Map;)Lcom/amazon/weblab/mobile/settings/Interval;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceResponse;->mCacheControl:Lcom/amazon/weblab/mobile/settings/Interval;

    .line 62
    invoke-static {p2, p3}, Lcom/amazon/weblab/mobile/service/ServiceAssignmentJSONParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceResponse;->mTreatments:Ljava/util/Map;

    return-void

    .line 57
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p3, v2

    const/4 p1, 0x1

    aput-object v3, p3, p1

    const-string p1, "Service returns type %s, expecting %s"

    .line 57
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Service doesn\'t return a content type."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Headers should not be null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Service payload should only be null if using createEmptyResponse"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static createEmptyServiceResponse()Lcom/amazon/weblab/mobile/service/ServiceResponse;
    .locals 1

    .line 106
    new-instance v0, Lcom/amazon/weblab/mobile/service/ServiceResponse;

    invoke-direct {v0}, Lcom/amazon/weblab/mobile/service/ServiceResponse;-><init>()V

    return-object v0
.end method

.method private getCacheControlValue(Ljava/util/Map;)Lcom/amazon/weblab/mobile/settings/Interval;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/amazon/weblab/mobile/settings/Interval;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cache-Control"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "="

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    array-length v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "max-age"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 77
    :try_start_0
    new-instance v1, Lcom/amazon/weblab/mobile/settings/Interval;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v5, v6, v0}, Lcom/amazon/weblab/mobile/settings/Interval;-><init>(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 83
    :catch_0
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "max-age=<cache_control_value>"

    aput-object p1, v1, v3

    const-string p1, "Service returns cache control %s, expecting %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing cache control key"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getAssignments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/service/ServiceAssignment;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceResponse;->mTreatments:Ljava/util/Map;

    return-object v0
.end method

.method getTtl()Lcom/amazon/weblab/mobile/settings/Interval;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceResponse;->mCacheControl:Lcom/amazon/weblab/mobile/settings/Interval;

    return-object v0
.end method
