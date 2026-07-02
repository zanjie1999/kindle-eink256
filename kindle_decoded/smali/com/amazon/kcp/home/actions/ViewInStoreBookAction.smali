.class public final Lcom/amazon/kcp/home/actions/ViewInStoreBookAction;
.super Ljava/lang/Object;
.source "ViewInStoreBookAction.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeBookAction;


# instance fields
.field private final metricName:Ljava/lang/String;

.field private final store:Lcom/amazon/kindle/store/StoreOpenerFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/store/StoreOpenerFactory;)V
    .locals 1

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/ViewInStoreBookAction;->store:Lcom/amazon/kindle/store/StoreOpenerFactory;

    const-string p1, "ViewInStore"

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/home/actions/ViewInStoreBookAction;->metricName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/ViewInStoreBookAction;->store:Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 36
    sget-object p2, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {p2}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 37
    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public getActionTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->lib_sample_store_link:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStr\u2026ng.lib_sample_store_link)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
