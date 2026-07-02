.class final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1$1;
.super Ljava/lang/Object;
.source "BottomSheetDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1$1;->$actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1$1;->$actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->dismiss()V

    :cond_0
    return-void
.end method
