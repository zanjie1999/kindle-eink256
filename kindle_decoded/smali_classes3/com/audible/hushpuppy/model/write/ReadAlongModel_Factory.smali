.class public final Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;
.super Ljava/lang/Object;
.source "ReadAlongModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/model/write/ReadAlongModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final readAlongPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final readerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->readAlongPolicyProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;)",
            "Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/model/write/ReadAlongModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;)",
            "Lcom/audible/hushpuppy/model/write/ReadAlongModel;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    .line 43
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/greenrobot/event/EventBus;

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 45
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;

    .line 46
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/readalong/IReadAlongPolicy;Lcom/amazon/kindle/krx/reader/IReaderManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/model/write/ReadAlongModel;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->readAlongPolicyProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel_Factory;->get()Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    move-result-object v0

    return-object v0
.end method
