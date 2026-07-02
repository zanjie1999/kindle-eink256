.class Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;
.super Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;
.source "DebugUpsellPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugSeekerDecorationProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;->this$0:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;-><init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V

    return-void
.end method


# virtual methods
.method public getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    const-string p1, "Debug Upsell Toggle"

    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 1

    .line 142
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isDebugUpsellEnabled()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 146
    :cond_0
    sget-object p4, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-virtual {p1, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$layout;->debug_upsell_button:I

    check-cast p3, Landroid/view/ViewGroup;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 148
    new-instance p2, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider$1;-><init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_1
    return-object v0
.end method
