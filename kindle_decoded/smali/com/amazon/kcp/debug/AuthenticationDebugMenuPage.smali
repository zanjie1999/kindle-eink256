.class public final Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AuthenticationDebugMenuPage.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private final configureFailSynchronousGetTokenOnMainThreadOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 32
    sget v0, Lcom/amazon/kindle/krl/R$id;->fail_synchronous_get_token_on_main_thread:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string v0, "checkBox"

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->getFailSynchronousGetTokenOnMainThread(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    new-instance v0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;-><init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final configureGetIdentityCookiesOption(Landroid/view/ViewGroup;)V
    .locals 2

    .line 38
    sget v0, Lcom/amazon/kindle/krl/R$id;->authentication_result:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    sget v1, Lcom/amazon/kindle/krl/R$id;->get_identity_cookies:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;-><init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final configureGetOAuthAccessTokenOption(Landroid/view/ViewGroup;)V
    .locals 2

    .line 55
    sget v0, Lcom/amazon/kindle/krl/R$id;->authentication_result:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    sget v1, Lcom/amazon/kindle/krl/R$id;->get_oauth_access_token:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;-><init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Authentication"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_authentication:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->configureFailSynchronousGetTokenOnMainThreadOption(Landroid/view/ViewGroup;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->configureGetIdentityCookiesOption(Landroid/view/ViewGroup;)V

    .line 27
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->configureGetOAuthAccessTokenOption(Landroid/view/ViewGroup;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
