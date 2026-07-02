.class Lcom/amazon/kcp/search/BookReaderSearchActivity$1$2;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->onSearchStopped(Lcom/amazon/kcp/search/IBookSearchController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$2;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1$2;->this$1:Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->onSearchTerminated()V

    return-void
.end method
