.class public final Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;
.super Ljava/lang/Object;
.source "CompressedResourceHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/download/CompressedResourceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
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
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;->daoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/CompressedResourceHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/CompressedResourceHandler;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;-><init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/download/CompressedResourceHandler;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;->get()Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    move-result-object v0

    return-object v0
.end method
