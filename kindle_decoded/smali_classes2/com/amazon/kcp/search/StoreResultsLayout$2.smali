.class Lcom/amazon/kcp/search/StoreResultsLayout$2;
.super Ljava/lang/Object;
.source "StoreResultsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/StoreResultsLayout;->setCoverAsync(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

.field final synthetic val$cover:Landroid/widget/ImageView;

.field final synthetic val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/StoreResultsLayout;Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/widget/ImageView;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

    iput-object p2, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    iput-object p3, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->val$cover:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

    invoke-static {v0}, Lcom/amazon/kcp/search/StoreResultsLayout;->access$100(Lcom/amazon/kcp/search/StoreResultsLayout;)Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 203
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, v0, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 204
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->val$result:Lcom/amazon/kcp/search/store/StoreContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v6, 0x0

    .line 202
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->this$0:Lcom/amazon/kcp/search/StoreResultsLayout;

    invoke-static {v1}, Lcom/amazon/kcp/search/StoreResultsLayout;->access$200(Lcom/amazon/kcp/search/StoreResultsLayout;)Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/search/StoreResultsLayout$2$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/search/StoreResultsLayout$2$1;-><init>(Lcom/amazon/kcp/search/StoreResultsLayout$2;Lcom/amazon/kcp/cover/UpdatableCover;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
