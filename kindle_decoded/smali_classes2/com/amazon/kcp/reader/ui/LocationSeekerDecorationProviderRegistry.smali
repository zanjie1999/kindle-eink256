.class public Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;
.super Ljava/lang/Object;
.source "LocationSeekerDecorationProviderRegistry.java"


# static fields
.field private static locationSeekerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->initLocationSeekerRegistry()V

    .line 62
    sget-object v0, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->locationSeekerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setLocationSeekerDecorationProviderRegistry not called?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLocationSeekerProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->initLocationSeekerRegistry()V

    .line 53
    sget-object v0, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->locationSeekerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method private static declared-synchronized initLocationSeekerRegistry()V
    .locals 4

    const-class v0, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->locationSeekerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry$1;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry$1;-><init>()V

    sput-object v1, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->locationSeekerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 42
    new-instance v2, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
