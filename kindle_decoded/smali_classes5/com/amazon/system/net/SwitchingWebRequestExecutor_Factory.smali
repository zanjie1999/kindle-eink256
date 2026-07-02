.class public final Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;
.super Ljava/lang/Object;
.source "SwitchingWebRequestExecutor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/system/net/SwitchingWebRequestExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final krlForDownloadFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->krlForDownloadFacadeProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;>;)",
            "Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/system/net/SwitchingWebRequestExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;>;)",
            "Lcom/amazon/system/net/SwitchingWebRequestExecutor;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;

    .line 34
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/system/net/SwitchingWebRequestExecutor;-><init>(Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/system/net/SwitchingWebRequestExecutor;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->krlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/system/net/SwitchingWebRequestExecutor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor_Factory;->get()Lcom/amazon/system/net/SwitchingWebRequestExecutor;

    move-result-object v0

    return-object v0
.end method
