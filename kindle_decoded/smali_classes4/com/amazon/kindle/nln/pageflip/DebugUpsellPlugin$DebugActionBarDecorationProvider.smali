.class Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;
.super Ljava/lang/Object;
.source "DebugUpsellPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionBarDecoration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugActionBarDecorationProvider"
.end annotation


# instance fields
.field m_view:Lcom/amazon/kindle/krx/ui/ColorCodedView;

.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->m_view:Lcom/amazon/kindle/krx/ui/ColorCodedView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;-><init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Debug Upsell Plugin"

    return-object v0
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$200(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isDebugUpsellEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->m_view:Lcom/amazon/kindle/krx/ui/ColorCodedView;

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$300(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->debug_upsell_layout:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;->setPlugin(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V

    .line 92
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->m_view:Lcom/amazon/kindle/krx/ui/ColorCodedView;

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;->m_view:Lcom/amazon/kindle/krx/ui/ColorCodedView;

    return-object p1

    :cond_2
    return-object v1
.end method
