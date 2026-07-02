.class public Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;
.super Ljava/lang/Object;
.source "PurchaseClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/PurchaseClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nullableMessage:Ljava/lang/String;

.field private nullablePurchaseRecord:Lcom/amazon/ea/purchase/model/PurchaseRecord;

.field public final readingStreamsMetadata:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->readingStreamsMetadata:Ljava/util/Map;

    const-string v1, "Asin"

    .line 56
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->readingStreamsMetadata:Ljava/util/Map;

    const-string v0, "RefTag"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 8

    .line 85
    new-instance v7, Lcom/amazon/ea/purchase/PurchaseClient$Result;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->nullableMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->nullablePurchaseRecord:Lcom/amazon/ea/purchase/model/PurchaseRecord;

    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->readingStreamsMetadata:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/purchase/PurchaseClient$Result;-><init>(ZLcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/util/Map;Lcom/amazon/ea/purchase/PurchaseClient$1;)V

    return-object v7
.end method

.method public buildSuccess()Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 8

    .line 81
    new-instance v7, Lcom/amazon/ea/purchase/PurchaseClient$Result;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->nullableMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->nullablePurchaseRecord:Lcom/amazon/ea/purchase/model/PurchaseRecord;

    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->readingStreamsMetadata:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ea/purchase/PurchaseClient$Result;-><init>(ZLcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/util/Map;Lcom/amazon/ea/purchase/PurchaseClient$1;)V

    return-object v7
.end method

.method public withMessage(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->nullableMessage:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public withMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->readingStreamsMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withPurchaseRecord(Lcom/amazon/ea/purchase/model/PurchaseRecord;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderItemId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->nullablePurchaseRecord:Lcom/amazon/ea/purchase/model/PurchaseRecord;

    .line 63
    iget-object p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->readingStreamsMetadata:Ljava/util/Map;

    const-string v1, "OrderID"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
