.class Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ViewAccessibilityInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;->initializeForAccessibility(Landroid/view/View;Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$1;->this$0:Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .line 26
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_1

    return v1

    .line 32
    :cond_1
    check-cast p1, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    .line 33
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    .line 34
    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$1;->this$0:Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;

    iget v2, v2, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;->defaultIncrementFactor:F

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    if-nez v3, :cond_2

    return v1

    .line 41
    :cond_2
    sget-object v4, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$2;->$SwitchMap$com$amazon$kcp$reader$accessibility$AccessibilityActionConstants:[I

    invoke-static {p2}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->fromSerialization(I)Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v4, p2

    if-eq p2, v0, :cond_5

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    return v1

    .line 51
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    if-lt p3, p2, :cond_4

    return v1

    :cond_4
    add-int/2addr p3, v2

    .line 54
    invoke-virtual {p1, p3}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    .line 55
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    return v0

    :cond_5
    if-gtz p3, :cond_6

    return v1

    :cond_6
    sub-int/2addr p3, v2

    .line 46
    invoke-virtual {p1, p3}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    .line 47
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    return v0
.end method
