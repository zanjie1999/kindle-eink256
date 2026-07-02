.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


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

    .line 3033
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 3040
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 3042
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->pause()V

    .line 3043
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Z)V

    .line 3045
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    goto :goto_0

    .line 3047
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    .line 3052
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    .line 3053
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 3054
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->updateAllPageItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 3057
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/utils/RunnableHandler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
