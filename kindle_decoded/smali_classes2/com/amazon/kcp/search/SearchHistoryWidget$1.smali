.class Lcom/amazon/kcp/search/SearchHistoryWidget$1;
.super Ljava/lang/Object;
.source "SearchHistoryWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchHistoryWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHistoryWidget;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget$1;->this$0:Lcom/amazon/kcp/search/SearchHistoryWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 57
    new-instance p4, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/amazon/kcp/search/SearchHistoryWidget$1$1;-><init>(Lcom/amazon/kcp/search/SearchHistoryWidget$1;Landroid/widget/AdapterView;I)V

    const-wide/16 v0, 0x64

    invoke-static {p2, p4, v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method
