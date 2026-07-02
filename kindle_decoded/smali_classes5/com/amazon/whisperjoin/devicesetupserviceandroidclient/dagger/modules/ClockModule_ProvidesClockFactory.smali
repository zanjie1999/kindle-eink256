.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule_ProvidesClockFactory;
.super Ljava/lang/Object;
.source "ClockModule_ProvidesClockFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule_ProvidesClockFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule_ProvidesClockFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule_ProvidesClockFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule_ProvidesClockFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;->providesClock()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule_ProvidesClockFactory;->get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

    move-result-object v0

    return-object v0
.end method
