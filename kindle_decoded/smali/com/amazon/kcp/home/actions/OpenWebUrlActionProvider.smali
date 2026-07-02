.class public final Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;
.super Ljava/lang/Object;
.source "OpenWebUrlActionProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeActionProvider;


# instance fields
.field private final actionKey:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WEB"

    .line 25
    iput-object v0, p0, Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;->actionKey:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private final showNetworkDialog(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ConnectionError"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "AlertActivity.createAler\u2026RROR, null, view.context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;->showNetworkDialog(Landroid/view/View;)V

    if-eqz p4, :cond_0

    .line 32
    sget-object p3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-interface {p4, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "url"

    .line 36
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p3, 0x10000000

    .line 38
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p3

    const-string v2, "AndroidApplicationController.getInstance()"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v2, "AndroidApplicationContro\u2026nstance().currentActivity"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 41
    invoke-virtual {v0, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 42
    iget-object p3, p0, Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p4, :cond_2

    .line 43
    sget-object p3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_SUCCESS:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-interface {p4, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string p3, "com.amazon.kcp.home.actions.OpenWebUrlActionProvider"

    const-string v0, "No package available to handle Open URL intent."

    .line 46
    invoke-static {p3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    .line 47
    sget-object p3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-interface {p4, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_4
    :goto_0
    return v1
.end method

.method public getActionKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/OpenWebUrlActionProvider;->actionKey:Ljava/lang/String;

    return-object v0
.end method
