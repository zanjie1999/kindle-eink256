.class Lcom/amazon/kcp/search/StoreResultsLayout$1;
.super Ljava/lang/Object;
.source "StoreResultsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/StoreResultsLayout;->addStoreResults(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

.field final synthetic val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/StoreResultsLayout;Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout$1;->this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

    iput-object p2, p0, Lcom/amazon/kcp/search/StoreResultsLayout$1;->val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout$1;->this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$1;->val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    invoke-static {p1, v0}, Lcom/amazon/kcp/search/StoreResultsLayout;->access$000(Lcom/amazon/kcp/search/StoreResultsLayout;Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    return-void
.end method
