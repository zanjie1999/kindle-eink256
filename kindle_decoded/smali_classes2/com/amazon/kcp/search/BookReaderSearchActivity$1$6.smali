.class Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onTrackerReportCurrentProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

.field final synthetic val$progress:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;J)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iput-wide p2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;->val$progress:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$6;->val$progress:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
