.class public final Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;
.super Ljava/lang/Object;
.source "LibraryUIManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/ui/LibraryUIManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidDeviceClassFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private final pubSubMessageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->androidDeviceClassFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newLibraryUIManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Ldagger/Lazy;Ldagger/Lazy;)Lcom/amazon/kindle/krx/ui/LibraryUIManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/LibraryUIManager;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;-><init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/LibraryUIManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/AndroidDeviceClassFactory;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/LibraryUIManager;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    .line 39
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 40
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    .line 41
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager;-><init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/ui/LibraryUIManager;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->androidDeviceClassFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/LibraryUIManager_Factory;->get()Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    move-result-object v0

    return-object v0
.end method
