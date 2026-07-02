.class public final Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;
.super Ljava/lang/Object;
.source "ManifestRequestParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFrom(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;
    .locals 10

    .line 22
    sget-object v0, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;->INSTANCE:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v1

    .line 35
    new-instance v9, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v3

    const-string v2, "server"

    .line 36
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "correlationId"

    .line 37
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v1, "forced"

    .line 38
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;->invoke(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;)Z

    move-result v6

    const-string v1, "silentUpdate"

    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory$buildFrom$1;->invoke(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;)Z

    move-result v7

    move-object v2, v9

    move-object v8, p2

    .line 35
    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V

    return-object v9
.end method
