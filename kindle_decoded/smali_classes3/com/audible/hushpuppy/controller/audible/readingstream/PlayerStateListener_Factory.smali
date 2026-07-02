.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;
.super Ljava/lang/Object;
.source "PlayerStateListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final playerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final relationshipSyncDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->playerStateContextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->readerStateContextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->relationshipSyncDataProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;"
        }
    .end annotation

    .line 65
    new-instance v6, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;"
        }
    .end annotation

    .line 51
    new-instance v6, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    .line 52
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 53
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 54
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    .line 55
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 56
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->playerStateContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->readerStateContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->relationshipSyncDataProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener_Factory;->get()Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateListener;

    move-result-object v0

    return-object v0
.end method
