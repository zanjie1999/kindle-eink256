.class Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "SendToKindleDebugMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p2, p0, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Send To Kindle"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 44
    invoke-static {}, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;->access$000()Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    sget v1, Lcom/amazon/kindle/s2k/R$layout;->stk_debug_menu:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    sget v1, Lcom/amazon/kindle/s2k/R$id;->toggle_stk_endpoint:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 48
    invoke-static {}, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->isSTKGammaEndpointEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 49
    new-instance v2, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1$1;-><init>(Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method
