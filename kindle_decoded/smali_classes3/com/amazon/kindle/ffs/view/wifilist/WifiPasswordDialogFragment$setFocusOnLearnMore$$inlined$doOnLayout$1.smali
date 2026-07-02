.class public final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "AccessibilityUtils.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->setFocusOnLearnMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessibilityUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt$doOnNextLayout$1\n+ 2 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt\n+ 3 WifiPasswordDialogFragment.kt\ncom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment\n*L\n1#1,39:1\n35#2,2:40\n198#3,6:42\n*E\n"
.end annotation


# instance fields
.field final synthetic $learnMoreLink$inlined:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;->$learnMoreLink$inlined:Landroid/widget/TextView;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragmentKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string p3, "doOnLayout"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;->$learnMoreLink$inlined:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p2, 0x40

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;->$learnMoreLink$inlined:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;->$learnMoreLink$inlined:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    :cond_3
    return-void
.end method
