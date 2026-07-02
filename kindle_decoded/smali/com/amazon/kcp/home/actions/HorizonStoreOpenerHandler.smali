.class final Lcom/amazon/kcp/home/actions/HorizonStoreOpenerHandler;
.super Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;
.source "OpenStoreUrlActionProvider.kt"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "urlArg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
