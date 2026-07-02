.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_LoadTocExtras()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

.field final synthetic val$toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V
    .locals 0

    .line 2369
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;->val$toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2374
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;->val$toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 2375
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    long-to-int v0, v3

    invoke-static {v2, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1602(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;I)I

    return-void
.end method
