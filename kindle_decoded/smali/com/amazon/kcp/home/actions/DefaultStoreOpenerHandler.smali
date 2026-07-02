.class Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;
.super Ljava/lang/Object;
.source "OpenStoreUrlActionProvider.kt"


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final urlArg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "urlArg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->urlArg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 110
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 3

    .line 112
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->urlArg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/HomeUtils;->formatUrl(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
