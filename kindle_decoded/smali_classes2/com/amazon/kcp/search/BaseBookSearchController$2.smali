.class Lcom/amazon/kcp/search/BaseBookSearchController$2;
.super Ljava/lang/Object;
.source "BaseBookSearchController.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BaseBookSearchController;->startSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BaseBookSearchController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BaseBookSearchController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$1100(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$1200(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    return-void
.end method

.method public onResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$900(Lcom/amazon/kcp/search/BaseBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method public onResultCount(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$800(Lcom/amazon/kcp/search/BaseBookSearchController;I)V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$602(Lcom/amazon/kcp/search/BaseBookSearchController;Z)Z

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchController$2;->this$0:Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-static {p1}, Lcom/amazon/kcp/search/BaseBookSearchController;->access$700(Lcom/amazon/kcp/search/BaseBookSearchController;)V

    return-void
.end method
