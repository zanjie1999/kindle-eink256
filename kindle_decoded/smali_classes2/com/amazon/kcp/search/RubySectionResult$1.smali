.class Lcom/amazon/kcp/search/RubySectionResult$1;
.super Ljava/lang/Object;
.source "RubySectionResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/RubySectionResult;->getView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/RubySectionResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/RubySectionResult;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/search/RubySectionResult$1;->this$0:Lcom/amazon/kcp/search/RubySectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/search/RubySectionResult$1;->this$0:Lcom/amazon/kcp/search/RubySectionResult;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchResult;->notifyClick(Landroid/view/View;)V

    return-void
.end method
