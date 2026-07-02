.class Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DeliveryServiceDebugMenu.java"


# instance fields
.field private context:Landroid/content/Context;

.field singleCFToggle:Landroid/widget/ToggleButton;

.field supportedVoucherVersionsManifest:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setupOptions()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->singleCFToggle:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->singleCFToggle:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$1;-><init>(Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->supportedVoucherVersionsManifest:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->supportedVoucherVersionsManifest:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$2;-><init>(Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Delivery Service"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/amazon/kindle/krl/R$layout;->delivery_service_debug_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    sget v1, Lcom/amazon/kindle/krl/R$id;->toggle_using_single_cf:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->singleCFToggle:Landroid/widget/ToggleButton;

    .line 46
    sget v1, Lcom/amazon/kindle/krl/R$id;->toggle_supported_voucher_versions_manifest:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->supportedVoucherVersionsManifest:Landroid/widget/ToggleButton;

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->setupOptions()V

    return-object v0
.end method
