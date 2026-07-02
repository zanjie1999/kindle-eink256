.class Lcom/amazon/versioning/UpdateDebugMenu$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "UpdateDebugMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/UpdateDebugMenu;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/UpdateDebugMenu;Landroid/content/Context;)V
    .locals 0

    .line 28
    iput-object p2, p0, Lcom/amazon/versioning/UpdateDebugMenu$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method

.method private configureUpdateButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 48
    sget v0, Lcom/amazon/versioning/R$id;->button_toggle_debug:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string v0, "Disable Update plugin features"

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Update plugin features"

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/versioning/UpdateDebugMenu$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/versioning/util/DebugUtils;->isPluginEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 52
    new-instance v0, Lcom/amazon/versioning/UpdateDebugMenu$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/UpdateDebugMenu$1$1;-><init>(Lcom/amazon/versioning/UpdateDebugMenu$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Update Plugin DebugUtils Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/amazon/versioning/UpdateDebugMenu$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    sget v1, Lcom/amazon/versioning/R$layout;->debug_flag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    invoke-direct {p0, v0}, Lcom/amazon/versioning/UpdateDebugMenu$1;->configureUpdateButton(Landroid/view/ViewGroup;)V

    return-object v0
.end method
