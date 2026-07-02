.class public final Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;
.super Ljava/lang/Object;
.source "ResourceSetDetailsListAdapterFactory.java"


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

.field private final downloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
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
            "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->downloadManagerProvider:Ljavax/inject/Provider;

    .line 14
    iput-object p2, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->executorProvider:Ljavax/inject/Provider;

    .line 15
    iput-object p3, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->daoProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;
    .locals 7

    .line 18
    new-instance v6, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->downloadManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;-><init>(Lcom/amazon/appexpan/client/download/ResourceDownloadManager;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Landroid/content/Context;Ljava/lang/String;)V

    return-object v6
.end method
