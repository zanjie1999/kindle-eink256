.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;
.super Ljava/lang/Object;
.source "UtilModule_ProvidesClockFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)V

    return-object v0
.end method

.method public static proxyProvidesClock(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object v0

    return-object v0
.end method
