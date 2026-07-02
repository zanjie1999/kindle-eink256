.class public Lcom/amazon/ea/purchase/client/response/UnBuyResponse;
.super Ljava/lang/Object;
.source "UnBuyResponse.java"


# static fields
.field private static final FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/UnBuyResponse;

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.response.UnBuyResponse"


# instance fields
.field public final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;-><init>(Z)V

    sput-object v0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/UnBuyResponse;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->success:Z

    return-void
.end method

.method public static parse(Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;)Lcom/amazon/ea/purchase/client/response/UnBuyResponse;
    .locals 4

    const-string v0, "PrepareUnbuyResponseParse"

    .line 27
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 29
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->success:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "ServerResponseNonSuccess"

    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 30
    sget-object p0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "non-success response from server"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object p0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/UnBuyResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "order-canceled"

    .line 34
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getJsonResult()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string p0, "ServerResponseNonCanceled"

    invoke-static {v1, p0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v1, :cond_3

    .line 35
    sget-object p0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "non order-canceled response from server"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/UnBuyResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 39
    :cond_3
    :try_start_2
    new-instance p0, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;

    invoke-direct {p0, v2}, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;-><init>(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 42
    throw p0
.end method
