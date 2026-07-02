.class final Lcom/amazon/kindle/trial/TrialLibraryController;
.super Lcom/amazon/kcp/library/EmptyLibraryController;
.source "TrialLibraryController.kt"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)V
    .locals 1

    const-string v0, "libraryActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchStoreRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyLibraryStringProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/EmptyLibraryController;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)V

    return-void
.end method


# virtual methods
.method protected getLibraryLayoutId()I
    .locals 1

    .line 61
    sget v0, Lcom/amazon/kindle/thirdparty/R$layout;->trial_empty_library:I

    return v0
.end method

.method protected populateEmptyLibraryLayout(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    .line 34
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->empty_library_logged_in:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 35
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->empty_library_logged_out:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    sget p1, Lcom/amazon/kindle/thirdparty/R$id;->empty_library_sign_in:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;->INSTANCE:Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_4
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->populateEmptyLibraryLayout(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    :goto_1
    return-void
.end method

.method public updateEmptyLibraryLayout(I)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isDefaultContentSupported()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->updateEmptyLibraryLayout(I)V

    return-void
.end method
