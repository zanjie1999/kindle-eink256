.class Lcom/amazon/ea/metrics/PurchaseAttributor$PotentialPurchase;
.super Ljava/lang/Object;
.source "PurchaseAttributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/PurchaseAttributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PotentialPurchase"
.end annotation


# instance fields
.field public final metricsTag:Ljava/lang/String;

.field public final timestamp:J

.field public final widgetMetricName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazon/ea/metrics/PurchaseAttributor$PotentialPurchase;->widgetMetricName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/amazon/ea/metrics/PurchaseAttributor$PotentialPurchase;->metricsTag:Ljava/lang/String;

    .line 122
    iput-wide p3, p0, Lcom/amazon/ea/metrics/PurchaseAttributor$PotentialPurchase;->timestamp:J

    return-void
.end method
