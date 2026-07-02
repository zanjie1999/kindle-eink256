.class public final Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;
.super Ljava/lang/Object;
.source "ReaderStateChangeListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final listeningStatsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;",
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

.field private final statsMediaItemFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;",
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
            "Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->listeningStatsManagerProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->statsMediaItemFactoryProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->playerStateContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    .line 36
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;

    .line 37
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->listeningStatsManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->statsMediaItemFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->playerStateContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener_Factory;->get()Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    move-result-object v0

    return-object v0
.end method
