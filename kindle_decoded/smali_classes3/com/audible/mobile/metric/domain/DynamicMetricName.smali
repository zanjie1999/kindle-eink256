.class public Lcom/audible/mobile/metric/domain/DynamicMetricName;
.super Ljava/lang/Object;
.source "DynamicMetricName.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "metric name cannot be null"

    .line 15
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/audible/mobile/metric/domain/DynamicMetricName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/DynamicMetricName;->name:Ljava/lang/String;

    return-object v0
.end method
