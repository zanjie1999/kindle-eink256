.class final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 155
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getBreadcrumbController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getVerticalSeekBarController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->updateSeekBarProgress(IZ)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getListeners$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;

    .line 159
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;->onBreadcrumbViewClicked(I)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$getSeekBarChangeListener$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;->onBreadcrumbViewClicked(I)V

    :cond_3
    return-void
.end method
