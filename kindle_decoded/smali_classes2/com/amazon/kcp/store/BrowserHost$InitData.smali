.class Lcom/amazon/kcp/store/BrowserHost$InitData;
.super Ljava/lang/Object;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitData"
.end annotation


# instance fields
.field jsonValueMap:Ljava/util/Map;
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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;Ljava/lang/String;JZ)V
    .locals 2

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "hostVersion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    const-string v0, "deviceID"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    const-string p2, "deviceType"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "networkStatus"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {p5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 350
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    const-string p2, "preferences"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "storeStartTime"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    xor-int/lit8 p2, p8, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "isColdStart"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 362
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost$InitData;->jsonValueMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
