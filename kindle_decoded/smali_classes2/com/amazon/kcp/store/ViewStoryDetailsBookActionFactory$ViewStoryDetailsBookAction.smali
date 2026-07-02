.class final Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "ViewStoryDetailsBookActionFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewStoryDetailsBookAction"
.end annotation


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p2, p0, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createFalkorProductPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "kin_red_lib_0"

    .line 37
    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    .line 38
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_0
    return-void
.end method

.method public getPriority()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$integer;->view_in_store_action_priority:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->lib_falkor_store_link_option_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.androidContext.g\u2026_store_link_option_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
