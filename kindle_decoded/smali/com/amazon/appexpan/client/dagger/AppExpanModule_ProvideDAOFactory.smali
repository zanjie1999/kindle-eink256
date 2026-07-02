.class public final Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;
.super Ljava/lang/Object;
.source "AppExpanModule_ProvideDAOFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
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

.field private final module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    .line 22
    iput-object p2, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;-><init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->proxyProvideDAO(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Landroid/content/Context;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDAO(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Landroid/content/Context;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule;->provideDAO(Landroid/content/Context;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->get()Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    move-result-object v0

    return-object v0
.end method
