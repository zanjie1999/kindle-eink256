.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;
.super Ljava/lang/Object;
.source "ClockModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesClock()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;-><init>()V

    return-object v0
.end method
