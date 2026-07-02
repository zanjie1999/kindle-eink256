.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
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
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 18
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Landroid/content/Context;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Landroid/content/Context;"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->proxyProvideContext(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideContext(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Landroid/content/Context;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideContext(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
