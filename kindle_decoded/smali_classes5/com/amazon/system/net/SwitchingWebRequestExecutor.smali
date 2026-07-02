.class public final Lcom/amazon/system/net/SwitchingWebRequestExecutor;
.super Ljava/lang/Object;
.source "SwitchingWebRequestExecutor.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequestExecutor;


# instance fields
.field private final baseWebRequestExecutor$delegate:Lkotlin/Lazy;

.field private final okHttpWebRequestExecutor$delegate:Lkotlin/Lazy;

.field private final shouldUseOkHttp:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ldagger/Lazy<",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "krlForDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;->INSTANCE:Lcom/amazon/system/net/SwitchingWebRequestExecutor$1;

    .line 28
    new-instance v1, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;

    invoke-direct {v1, p1, p2}, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;-><init>(Ldagger/Lazy;Ldagger/Lazy;)V

    .line 43
    new-instance p2, Lcom/amazon/system/net/SwitchingWebRequestExecutor$3;

    invoke-direct {p2, p1}, Lcom/amazon/system/net/SwitchingWebRequestExecutor$3;-><init>(Ldagger/Lazy;)V

    .line 27
    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/system/net/SwitchingWebRequestExecutor;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "shouldUseOkHttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpExecutorBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseExecutorBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->shouldUseOkHttp:Lkotlin/jvm/functions/Function0;

    .line 52
    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->okHttpWebRequestExecutor$delegate:Lkotlin/Lazy;

    .line 53
    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->baseWebRequestExecutor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getBaseWebRequestExecutor()Lcom/amazon/kindle/webservices/IWebRequestExecutor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->baseWebRequestExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    return-object v0
.end method

.method private final getOkHttpWebRequestExecutor()Lcom/amazon/kindle/webservices/IWebRequestExecutor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->okHttpWebRequestExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->shouldUseOkHttp:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->getOkHttpWebRequestExecutor()Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestExecutor;->execute(Lcom/amazon/kindle/webservices/IWebRequest;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor;->getBaseWebRequestExecutor()Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestExecutor;->execute(Lcom/amazon/kindle/webservices/IWebRequest;)V

    :goto_0
    return-void
.end method
