.class Lcom/amazon/kcp/reader/ReaderActivity$2;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onDrawerClosed(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onDrawerOpened(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onDrawerSlide(Landroid/view/View;F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$2;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onDrawerStateChanged(I)V

    return-void
.end method
