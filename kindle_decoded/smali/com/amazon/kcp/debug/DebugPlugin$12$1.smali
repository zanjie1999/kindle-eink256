.class Lcom/amazon/kcp/debug/DebugPlugin$12$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$12;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$12;Landroid/content/Context;)V
    .locals 0

    .line 195
    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugPlugin$12$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method

.method private configureKindleSpecialOfferOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 210
    sget v0, Lcom/amazon/kindle/krl/R$id;->kso_status:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isKindleSpecialOfferEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$12$1;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Upgrade Page Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$12$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 204
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_upgrade_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 205
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$12$1;->configureKindleSpecialOfferOption(Landroid/view/ViewGroup;)V

    return-object v0
.end method
