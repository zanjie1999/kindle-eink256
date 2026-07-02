.class public final Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;
.super Ljava/lang/Object;
.source "AuthorFollowActionProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeActionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;,
        Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;,
        Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;
    }
.end annotation


# instance fields
.field private final actionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AUTHOR_FOLLOW"

    .line 48
    iput-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->actionKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$displayNetworkErrorAlert(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->displayNetworkErrorAlert(Landroid/view/View;)V

    return-void
.end method

.method private final displayNetworkErrorAlert(Landroid/view/View;)V
    .locals 3

    .line 124
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "ConnectionError"

    const/4 v2, 0x0

    .line 125
    invoke-static {v1, v2, p1}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "AlertActivity.createAler\u2026            view.context)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final displayAPIFailureAlert(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kre_home_error_message_ttile:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 140
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->kre_home_author_error_message_text:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 141
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "dialogBuilder.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z
    .locals 11
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

    const-string v0, "asin"

    .line 58
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "linkParameters"

    .line 59
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v7, v1

    const-string/jumbo v1, "reftag"

    .line 60
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "KindleHomeAndroid"

    .line 67
    :cond_1
    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v10, "Utils.getFactory()"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Utils.getFactory().context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceAuthorFollowAPIFailure()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 68
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$1;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$1;-><init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_2
    if-nez v0, :cond_3

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing author follow card - error when checking author status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "asin="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; reftag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.amazon.kcp.home.actions.AuthorFollowActionProvider"

    .line 77
    invoke-static {v0, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;-><init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    if-nez v1, :cond_4

    .line 88
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$3;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$3;-><init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 96
    :cond_4
    new-instance v9, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    .line 103
    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v8

    move-object v1, v9

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    .line 96
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 106
    new-instance p1, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;

    .line 108
    new-instance v4, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;

    invoke-direct {v4, v9}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;-><init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, p3

    .line 106
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/home/api/AuthorFollowStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public getActionKey()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->actionKey:Ljava/lang/String;

    return-object v0
.end method
