.class public final Lcom/amazon/kindle/sync/SynchronizationManager_Factory;
.super Ljava/lang/Object;
.source "SynchronizationManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/sync/SynchronizationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final appControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleApplicationController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleApplicationController;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;->appControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/sync/SynchronizationManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleApplicationController;",
            ">;)",
            "Lcom/amazon/kindle/sync/SynchronizationManager_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/sync/SynchronizationManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleApplicationController;",
            ">;)",
            "Lcom/amazon/kindle/sync/SynchronizationManager;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/sync/SynchronizationManager;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/sync/SynchronizationManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;->appControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/sync/SynchronizationManager_Factory;->get()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    return-object v0
.end method
