.class public Lcom/audible/mobile/stats/domain/CustomerListeningStat;
.super Ljava/lang/Object;
.source "CustomerListeningStat.java"


# instance fields
.field private aggregatedSum:Ljava/lang/Long;

.field private intervalIdentifier:Ljava/lang/String;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->aggregatedSum:Ljava/lang/Long;

    .line 46
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->intervalIdentifier:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAggregatedSum()J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->aggregatedSum:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntervalIdentifier()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->intervalIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setDemoModeIntervalIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->intervalIdentifier:Ljava/lang/String;

    return-void
.end method
