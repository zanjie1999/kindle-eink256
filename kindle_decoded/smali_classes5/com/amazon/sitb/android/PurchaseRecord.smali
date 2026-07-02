.class public Lcom/amazon/sitb/android/PurchaseRecord;
.super Ljava/lang/Object;
.source "PurchaseRecord.java"


# instance fields
.field private isSuccess:Z

.field private orderId:Ljava/lang/String;

.field private orderItemId:Ljava/lang/String;

.field private timeCached:J


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/sitb/android/PurchaseRecord;-><init>(ZLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/amazon/sitb/android/PurchaseRecord;->isSuccess:Z

    .line 19
    iput-object p2, p0, Lcom/amazon/sitb/android/PurchaseRecord;->orderId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/amazon/sitb/android/PurchaseRecord;->orderItemId:Ljava/lang/String;

    .line 21
    iput-wide p4, p0, Lcom/amazon/sitb/android/PurchaseRecord;->timeCached:J

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/sitb/android/PurchaseRecord;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/sitb/android/PurchaseRecord;->orderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/amazon/sitb/android/PurchaseRecord;->isSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "orderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/PurchaseRecord;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderItemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/PurchaseRecord;->orderItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
