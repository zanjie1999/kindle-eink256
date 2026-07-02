.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvidesJobSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/job/JobScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    .line 18
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Landroid/app/job/JobScheduler;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/app/job/JobScheduler;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;->providesJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;->get()Landroid/app/job/JobScheduler;

    move-result-object v0

    return-object v0
.end method
