.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AaThemeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setupMainView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->access$isChecked$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isUndo()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 200
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->access$isChecked$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isUndo()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
