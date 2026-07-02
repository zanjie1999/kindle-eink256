.class public Lcom/amazon/ea/purchase/model/PurchaseRecord;
.super Ljava/lang/Object;
.source "PurchaseRecord.java"


# instance fields
.field public final orderId:Ljava/lang/String;

.field public final orderItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/ea/purchase/model/PurchaseRecord;->orderItemId:Ljava/lang/String;

    return-void
.end method
