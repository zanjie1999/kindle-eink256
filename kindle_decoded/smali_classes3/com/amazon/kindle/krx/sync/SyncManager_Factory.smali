.class public final Lcom/amazon/kindle/krx/sync/SyncManager_Factory;
.super Ljava/lang/Object;
.source "SyncManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/sync/SyncManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidSecurityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
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

.field private final libraryServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;"
        }
    .end annotation
.end field

.field private final readerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final synchronizationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->factoryProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->libraryServiceProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->androidSecurityProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p6, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->synchronizationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/sync/SyncManager_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/sync/SyncManager_Factory;"
        }
    .end annotation

    .line 77
    new-instance v7, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newSyncManager(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/content/ILibraryService;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/amazon/kindle/krx/sync/SyncManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            "Lcom/amazon/kcp/library/ILibraryController;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/sync/SyncManager;"
        }
    .end annotation

    .line 93
    new-instance v7, Lcom/amazon/kindle/krx/sync/SyncManager;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/sync/SyncManager;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/content/ILibraryService;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/sync/SyncManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/sync/SyncManager;"
        }
    .end annotation

    .line 61
    new-instance v7, Lcom/amazon/kindle/krx/sync/SyncManager;

    .line 62
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 63
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amazon/kcp/library/ILibraryController;

    .line 64
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/amazon/kindle/content/ILibraryService;

    .line 65
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 66
    invoke-static {p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    .line 67
    invoke-static {p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/sync/SyncManager;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/content/ILibraryService;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/sync/SyncManager;
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->libraryServiceProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->androidSecurityProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->synchronizationManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/sync/SyncManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/sync/SyncManager_Factory;->get()Lcom/amazon/kindle/krx/sync/SyncManager;

    move-result-object v0

    return-object v0
.end method
