.class Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onTrackerSetMaxProgress(Lcom/amazon/kcp/search/IBookSearchController;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

.field final synthetic val$max:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;J)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iput-wide p2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;->val$max:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$5;->val$max:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method
