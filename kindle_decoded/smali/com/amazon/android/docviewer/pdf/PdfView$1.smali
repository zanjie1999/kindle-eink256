.class Lcom/amazon/android/docviewer/pdf/PdfView$1;
.super Ljava/lang/Object;
.source "PdfView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfView;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 806
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 807
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$000(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
