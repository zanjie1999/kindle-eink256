.class Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CantileverDebugMenuPage"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 715
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 716
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method private configureAllowAllUrlsOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 750
    sget v0, Lcom/amazon/kindle/krl/R$id;->allow_all_urls:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->getCantileverAllowAllUrls(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 755
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$2;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureEndpointOverrideViews(Landroid/view/ViewGroup;)V
    .locals 2

    .line 764
    sget v0, Lcom/amazon/kindle/krl/R$id;->endpoint_override:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 765
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/debug/DebugUtils;->getCantileverEndpointOverride(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 766
    sget v1, Lcom/amazon/kindle/krl/R$id;->apply_endpoint_override:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 770
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureForceReleaseModeOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 736
    sget v0, Lcom/amazon/kindle/krl/R$id;->force_release_mode:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->getCantileverForceReleaseMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 741
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureIntentOption(Landroid/view/ViewGroup;)V
    .locals 5

    .line 779
    sget v0, Lcom/amazon/kindle/krl/R$id;->return_asin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 780
    sget v1, Lcom/amazon/kindle/krl/R$id;->order_id:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 781
    sget v2, Lcom/amazon/kindle/krl/R$id;->return_for_refund:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 782
    sget v3, Lcom/amazon/kindle/krl/R$id;->main:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 783
    sget v4, Lcom/amazon/kindle/krl/R$id;->old_main:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 784
    new-instance v4, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$5;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$6;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Cantilever"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 727
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_cantilever:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 728
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->configureForceReleaseModeOption(Landroid/view/ViewGroup;)V

    .line 729
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->configureAllowAllUrlsOption(Landroid/view/ViewGroup;)V

    .line 730
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->configureEndpointOverrideViews(Landroid/view/ViewGroup;)V

    .line 731
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->configureIntentOption(Landroid/view/ViewGroup;)V

    return-object v0
.end method
