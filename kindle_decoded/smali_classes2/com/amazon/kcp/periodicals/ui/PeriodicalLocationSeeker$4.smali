.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;
.super Ljava/lang/Object;
.source "PeriodicalLocationSeeker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->setNavigatorDelegator(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;->cancelHideOverlaysAfterDelay()V

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->access$300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;->gotoAllArticles()V

    :cond_1
    return-void
.end method
