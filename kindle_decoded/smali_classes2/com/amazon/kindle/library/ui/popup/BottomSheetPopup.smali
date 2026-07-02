.class public Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "BottomSheetPopup.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/IPopup;


# instance fields
.field private final behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final context:Landroid/content/Context;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->view:Landroid/view/View;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 31
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 p2, 0x2

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 41
    new-instance p1, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$1;-><init>(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->customizeBottomSheetBehavior()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method


# virtual methods
.method protected customizeBottomSheetBehavior()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;-><init>(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
