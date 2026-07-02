.class public Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DebugLoginCookiesDialogFragment.java"


# instance fields
.field private cookie:Landroid/widget/EditText;

.field private url:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->url:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->cookie:Landroid/widget/EditText;

    return-object p0
.end method

.method private inflateDialogView()Landroid/view/View;
    .locals 3

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_login_cookies_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lcom/amazon/kindle/krl/R$id;->url_entry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->url:Landroid/widget/EditText;

    .line 43
    sget v1, Lcom/amazon/kindle/krl/R$id;->cookie_entry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->cookie:Landroid/widget/EditText;

    .line 44
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->url:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    const-string v2, "https://www.amazon.in"

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->cookie:Landroid/widget/EditText;

    const-string v2, "experiment=AP_INDIGO_MOBILE_PHONE_ACCOUNT_SUPPORT_33612:T1; path=/; domain=.amazon.in; secure; expires=09 Sep 2044 21:30:48 GMT"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 23
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;->inflateDialogView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment$1;-><init>(Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;)V

    const-string v1, "Set Cookie"

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
