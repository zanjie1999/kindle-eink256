.class public final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$doOnLayout$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "AccessibilityUtils.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/AccessibilityUtilsKt;->doOnLayout(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessibilityUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt$doOnNextLayout$1\n+ 2 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt\n*L\n1#1,39:1\n35#2,2:40\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$doOnLayout$$inlined$doOnNextLayout$1;->$action$inlined:Lkotlin/jvm/functions/Function1;

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

    .line 40
    iget-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$doOnLayout$$inlined$doOnNextLayout$1;->$action$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
