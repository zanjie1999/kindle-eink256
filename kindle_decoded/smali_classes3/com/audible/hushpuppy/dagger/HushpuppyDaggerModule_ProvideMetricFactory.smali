.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideMetricFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/common/metric/IMetricLogger;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;->proxyProvideMetric(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMetric(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/common/metric/IMetricLogger;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideMetric()Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/common/metric/IMetricLogger;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    invoke-static {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMetricFactory;->get()Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    move-result-object v0

    return-object v0
.end method
