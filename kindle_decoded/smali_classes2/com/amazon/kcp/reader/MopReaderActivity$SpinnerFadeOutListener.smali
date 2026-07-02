.class Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;
.super Ljava/lang/Object;
.source "MopReaderActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/MopReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpinnerFadeOutListener"
.end annotation


# instance fields
.field private final m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 217
    iget-object p1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$500(Lcom/amazon/kcp/reader/MopReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->setBookOpenSpinnerInProgress(Z)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$600(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

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
