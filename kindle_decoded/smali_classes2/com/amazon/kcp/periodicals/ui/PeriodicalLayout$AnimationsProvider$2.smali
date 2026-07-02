.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->createCloseGridViewAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;)V
    .locals 0

    .line 2930
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 2945
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setVisibility(I)V

    .line 2946
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    .line 2948
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 2950
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2951
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    goto :goto_0

    .line 2953
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    const/16 v1, 0x15e

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    .line 2958
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object p1

    .line 2959
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 2960
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->updateAllPageItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 2963
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2964
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-boolean v1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->forceTapToTextTutorial:Z

    if-eqz v1, :cond_2

    .line 2965
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTapToTextTutorial()V

    .line 2966
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iput-boolean v0, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->forceTapToTextTutorial:Z

    .line 2971
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2972
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/utils/RunnableHandler;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;)V

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 2935
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateGridViewToolbarVisibility(Z)V

    return-void
.end method
