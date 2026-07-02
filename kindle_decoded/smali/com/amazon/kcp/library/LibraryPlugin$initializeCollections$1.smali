.class final Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;
.super Ljava/lang/Object;
.source "LibraryPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryPlugin;->initializeCollections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;->INSTANCE:Lcom/amazon/kcp/library/LibraryPlugin$initializeCollections$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 120
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->factory()Lcom/amazon/kcp/application/ILibraryFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/ILibraryFactory;->initializeCollections()Z

    .line 122
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/CounterManagerSingleton;->initializeCollectionsCounter()V

    :cond_0
    return-void
.end method
