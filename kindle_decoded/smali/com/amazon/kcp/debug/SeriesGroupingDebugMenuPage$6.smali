.class Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$6;
.super Ljava/lang/Object;
.source "SeriesGroupingDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeLoadButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->onLoadTestSeriesData(Landroid/view/View;)V

    return-void
.end method
