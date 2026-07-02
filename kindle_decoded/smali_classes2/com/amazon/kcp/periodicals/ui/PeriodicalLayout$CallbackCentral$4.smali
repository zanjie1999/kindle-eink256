.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V
    .locals 0

    .line 3124
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 3

    .line 3127
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->setOrientation(I)V

    .line 3131
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz v1, :cond_1

    .line 3132
    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F

    move-result v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v2, v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->onOrientationChanged(IFF)V

    .line 3133
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3135
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateGridViewLayout()V

    .line 3140
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateActionBarItems()V

    .line 3141
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$4;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->updateCustomButtons()V

    return-void
.end method
