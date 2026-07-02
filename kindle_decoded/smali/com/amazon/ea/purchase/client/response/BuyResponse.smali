.class public Lcom/amazon/ea/purchase/client/response/BuyResponse;
.super Ljava/lang/Object;
.source "BuyResponse.java"


# static fields
.field private static final FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

.field private static final MFA_CHALLENGE_FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

.field private static final NEED_BILLING_ADDRESS_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

.field private static final NEED_CREDIT_CARD_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

.field private static final PRICE_INCREASED_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.response.BuyResponse"


# instance fields
.field public final mfaChallengeRequired:Z

.field public final needBillingAddress:Z

.field public final needCreditCard:Z

.field public final priceIncreased:Z

.field public final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 17
    new-instance v8, Lcom/amazon/ea/purchase/client/response/BuyResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ea/purchase/client/response/BuyResponse;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/amazon/ea/purchase/client/response/BuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

    .line 20
    new-instance v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/ea/purchase/client/response/BuyResponse;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->PRICE_INCREASED_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

    .line 23
    new-instance v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/ea/purchase/client/response/BuyResponse;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->NEED_CREDIT_CARD_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

    .line 26
    new-instance v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/ea/purchase/client/response/BuyResponse;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->NEED_BILLING_ADDRESS_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

    .line 30
    new-instance v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/ea/purchase/client/response/BuyResponse;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->MFA_CHALLENGE_FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;

    return-void
.end method

.method private constructor <init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean p1, p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->success:Z

    .line 135
    iput-boolean p2, p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->priceIncreased:Z

    .line 136
    iput-boolean p3, p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->needCreditCard:Z

    .line 137
    iput-boolean p4, p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->needBillingAddress:Z

    .line 138
    iput-boolean p5, p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->mfaChallengeRequired:Z

    return-void
.end method

.method public static parse(Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;)Lcom/amazon/ea/purchase/client/response/BuyResponse;
    .locals 13

    const-string v0, "Other"

    const-string v1, "Success"

    const-string v2, "BuyResponseParse"

    .line 61
    invoke-static {v2}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 63
    :try_start_0
    iget-boolean v2, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->success:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "ServerResponseNonSuccess"

    invoke-static {v2, v5}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v2, :cond_1

    .line 64
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "non-success response from server"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 68
    :cond_1
    :try_start_1
    invoke-static {v1, v4}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 69
    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->getJsonResult()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "mfa-challenge-required"

    .line 72
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "MFAChallengeNeeded"

    invoke-static {v5, v6}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v5, :cond_2

    .line 73
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string v0, "buy failed, MFA challenge required"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->MFA_CHALLENGE_FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_2
    :try_start_2
    const-string/jumbo v5, "order-created"

    .line 76
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "OrderCreated"

    invoke-static {v5, v6}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v5, :cond_7

    .line 77
    iget-object p0, p0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;->json:Lorg/json/JSONObject;

    const-string/jumbo v0, "orderID"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v5, "OrderIdNull"

    .line 79
    invoke-static {v0, v5}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string v5, "Missing orderID"

    invoke-static {v0, v5}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "orderItemID"

    .line 83
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    const/4 v4, 0x1

    :cond_5
    const-string p0, "OrderItemIdNull"

    .line 84
    invoke-static {v4, p0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v4, :cond_6

    .line 85
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string v0, "Missing orderItemId"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_6
    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 89
    new-instance p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/amazon/ea/purchase/client/response/BuyResponse;-><init>(ZZZZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_7
    :try_start_3
    const-string/jumbo p0, "price-increased"

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "PriceIncreased"

    invoke-static {p0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz p0, :cond_8

    .line 92
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string v0, "buy failed, our price was lower than store price"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->PRICE_INCREASED_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_8
    :try_start_4
    const-string/jumbo p0, "need-credit-card"

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "NeedCreditCard"

    invoke-static {p0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz p0, :cond_9

    .line 96
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string v0, "buy failed, missing credit card info"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->NEED_CREDIT_CARD_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :cond_9
    :try_start_5
    const-string/jumbo p0, "need-billing-address"

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "NeedBillingAddress"

    invoke-static {p0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz p0, :cond_a

    .line 100
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    const-string v0, "buy failed, missing a billing address"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->NEED_BILLING_ADDRESS_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 104
    :cond_a
    :try_start_6
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buy failed [result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 106
    sget-object p0, Lcom/amazon/ea/purchase/client/response/BuyResponse;->FAILURE_RESPONSE:Lcom/amazon/ea/purchase/client/response/BuyResponse;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 111
    throw p0
.end method
