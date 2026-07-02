.class Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$2;
.super Ljava/lang/Object;
.source "ReplicaViewPager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/viewpager/UpdatePageCurlIndexDelegate;


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

.field final synthetic val$parentLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$2;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$2;->val$parentLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePageCurlIndex(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$2;->val$parentLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->curlViewMoveToPage(I)V

    return-void
.end method
