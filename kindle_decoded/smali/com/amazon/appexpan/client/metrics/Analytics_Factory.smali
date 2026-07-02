.class public final Lcom/amazon/appexpan/client/metrics/Analytics_Factory;
.super Ljava/lang/Object;
.source "Analytics_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/metrics/Analytics;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/metrics/Analytics_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;)",
            "Lcom/amazon/appexpan/client/metrics/Analytics_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/metrics/Analytics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;)",
            "Lcom/amazon/appexpan/client/metrics/Analytics;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/metrics/Analytics;-><init>(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/metrics/Analytics;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/metrics/Analytics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;->get()Lcom/amazon/appexpan/client/metrics/Analytics;

    move-result-object v0

    return-object v0
.end method
