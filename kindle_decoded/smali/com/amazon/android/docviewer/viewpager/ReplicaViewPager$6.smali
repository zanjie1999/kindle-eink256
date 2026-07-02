.class Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$6;
.super Ljava/lang/Object;
.source "ReplicaViewPager.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->reportRotationEndMetrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$6;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postFirstDraw(Landroid/view/View;)Z
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$6;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 385
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$6;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le v0, p1, :cond_1

    .line 389
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
