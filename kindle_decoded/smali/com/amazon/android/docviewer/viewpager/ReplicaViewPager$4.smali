.class Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$4;
.super Ljava/lang/Object;
.source "ReplicaViewPager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setUp(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/kindle/model/content/LocalBookState;)V
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

    .line 121
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$4;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteScroll()V
    .locals 3

    .line 124
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 124
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
