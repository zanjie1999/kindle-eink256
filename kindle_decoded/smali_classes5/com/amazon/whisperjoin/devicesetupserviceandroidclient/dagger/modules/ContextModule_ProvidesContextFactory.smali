.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule_ProvidesContextFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvidesContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule_ProvidesContextFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule_ProvidesContextFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule_ProvidesContextFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule_ProvidesContextFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule_ProvidesContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
