.class Lcom/amazon/kcp/search/GoToStoreResult$1;
.super Ljava/lang/Object;
.source "GoToStoreResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/GoToStoreResult;->getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/GoToStoreResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/GoToStoreResult;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/search/GoToStoreResult$1;->this$0:Lcom/amazon/kcp/search/GoToStoreResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/search/GoToStoreResult$1;->this$0:Lcom/amazon/kcp/search/GoToStoreResult;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchResult;->notifyClick(Landroid/view/View;)V

    return-void
.end method
