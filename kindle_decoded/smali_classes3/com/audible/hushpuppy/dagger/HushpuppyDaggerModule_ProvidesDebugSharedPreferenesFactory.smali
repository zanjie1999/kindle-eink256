.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/mobile/preferences/PreferenceStore<",
        "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
        ">;>;"
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

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 20
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/mobile/preferences/PreferenceStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->proxyProvidesDebugSharedPreferenes(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;)Lcom/audible/mobile/preferences/PreferenceStore;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesDebugSharedPreferenes(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;)Lcom/audible/mobile/preferences/PreferenceStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Landroid/content/Context;",
            ")",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesDebugSharedPreferenes(Landroid/content/Context;)Lcom/audible/mobile/preferences/PreferenceStore;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/mobile/preferences/PreferenceStore;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/mobile/preferences/PreferenceStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/mobile/preferences/PreferenceStore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDebugSharedPreferenesFactory;->get()Lcom/audible/mobile/preferences/PreferenceStore;

    move-result-object v0

    return-object v0
.end method
