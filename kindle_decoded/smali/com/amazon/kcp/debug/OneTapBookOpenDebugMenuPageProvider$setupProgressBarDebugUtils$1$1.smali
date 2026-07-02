.class public final Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$1$1;
.super Ljava/lang/Object;
.source "OneTapBookOpenDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupProgressBarDebugUtils(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->values()[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    move-result-object p1

    aget-object p1, p1, p3

    .line 115
    invoke-static {p1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->setProgressInterpolationType(Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
