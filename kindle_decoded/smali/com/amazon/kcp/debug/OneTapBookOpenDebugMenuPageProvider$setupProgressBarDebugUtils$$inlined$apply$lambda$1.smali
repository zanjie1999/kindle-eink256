.class public final Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "OneTapBookOpenDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupProgressBarDebugUtils(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $durationTextView$inlined:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$$inlined$apply$lambda$1;->$durationTextView$inlined:Landroid/widget/TextView;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$$inlined$apply$lambda$1;->$durationTextView$inlined:Landroid/widget/TextView;

    const-string p3, "durationTextView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-long p1, p2

    .line 127
    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->setProgressBarUpdateAnimationMs(J)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
