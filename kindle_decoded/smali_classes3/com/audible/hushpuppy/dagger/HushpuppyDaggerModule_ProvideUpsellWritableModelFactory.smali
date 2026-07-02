.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideUpsellWritableModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final upsellModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/UpsellModelFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/UpsellModelFactory;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 19
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->upsellModelFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/UpsellModelFactory;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/UpsellModelFactory;",
            ">;)",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/UpsellModelFactory;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->proxyProvideUpsellWritableModel(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/model/write/UpsellModelFactory;)Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideUpsellWritableModel(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/model/write/UpsellModelFactory;)Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideUpsellWritableModel(Lcom/audible/hushpuppy/model/write/UpsellModelFactory;)Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->upsellModelFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellWritableModelFactory;->get()Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    move-result-object v0

    return-object v0
.end method
