.class public final Lcom/amazon/kindle/com/amazonaws/regions/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String; = "amazonaws.com"


# instance fields
.field private final domain:Ljava/lang/String;

.field private final httpSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final httpsSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final serviceEndpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->httpSupport:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->httpsSupport:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->domain:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "amazonaws.com"

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->domain:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static getRegion(Lcom/amazon/kindle/com/amazonaws/regions/Regions;)Lcom/amazon/kindle/com/amazonaws/regions/Region;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getRegion(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Region;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 197
    instance-of v0, p1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 200
    :cond_0
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/regions/Region;

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->domain:Ljava/lang/String;

    return-object v0
.end method

.method getHttpSupport()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->httpSupport:Ljava/util/Map;

    return-object v0
.end method

.method getHttpsSupport()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->httpsSupport:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getServiceEndpoints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isServiceSupported(Ljava/lang/String;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/regions/Region;->serviceEndpoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
