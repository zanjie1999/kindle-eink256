.class public final Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;
.super Ljava/lang/Object;
.source "ManifestHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/download/ManifestHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;"
        }
    .end annotation
.end field

.field private final debugSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->daoProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->debugSettingsProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ManifestHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/ManifestHandler;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/appexpan/client/download/ManifestHandler;

    .line 46
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 48
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/appexpan/client/util/DebugSettings;

    .line 49
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/appexpan/client/download/ManifestHandler;-><init>(Landroid/content/Context;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/util/DebugSettings;Lcom/amazon/appexpan/client/metrics/Analytics;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/download/ManifestHandler;
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->daoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->debugSettingsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->analyticsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ManifestHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->get()Lcom/amazon/appexpan/client/download/ManifestHandler;

    move-result-object v0

    return-object v0
.end method
