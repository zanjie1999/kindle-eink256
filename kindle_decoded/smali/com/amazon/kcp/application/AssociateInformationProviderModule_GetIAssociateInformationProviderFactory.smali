.class public final Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;
.super Ljava/lang/Object;
.source "AssociateInformationProviderModule_GetIAssociateInformationProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;->applicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/IAssociateInformationProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;->proxyGetIAssociateInformationProvider(Landroid/app/Application;)Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetIAssociateInformationProvider(Landroid/app/Application;)Lcom/amazon/kcp/application/IAssociateInformationProvider;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/amazon/kcp/application/AssociateInformationProviderModule;->getIAssociateInformationProvider(Landroid/app/Application;)Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kcp/application/IAssociateInformationProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/IAssociateInformationProvider;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;->applicationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AssociateInformationProviderModule_GetIAssociateInformationProviderFactory;->get()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v0

    return-object v0
.end method
