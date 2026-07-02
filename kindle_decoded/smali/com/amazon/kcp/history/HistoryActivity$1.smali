.class Lcom/amazon/kcp/history/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/history/HistoryActivity;->setupToolBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/history/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/history/HistoryActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/history/HistoryActivity$1;->this$0:Lcom/amazon/kcp/history/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/history/HistoryActivity$1;->this$0:Lcom/amazon/kcp/history/HistoryActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
