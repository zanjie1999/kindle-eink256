.class public Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;
.super Ljava/lang/Object;
.source "WebResponseHeaders.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mHeaderNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    const-wide/16 v0, 0xc8

    .line 27
    iput-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mStatusCode:J

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 71
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->TAG:Ljava/lang/String;

    const-string p2, "WebResponseHeaders: addHeader: Header cannot be added. Name or value was null."

    invoke-static {p1, p2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getHeaderByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStatusCode()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mStatusCode:J

    return-wide v0
.end method

.method public setStatusCode(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->mStatusCode:J

    return-void
.end method
