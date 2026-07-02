.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideRestrictionHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
        ">;"
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

.field private final extensionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;",
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

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 28
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->extensionsProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->proxyProvideRestrictionHandler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideRestrictionHandler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideRestrictionHandler(Landroid/content/Context;Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 61
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->extensionsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideRestrictionHandlerFactory;->get()Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    move-result-object v0

    return-object v0
.end method
