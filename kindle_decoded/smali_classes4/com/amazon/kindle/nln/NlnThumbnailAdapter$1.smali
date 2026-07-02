.class Lcom/amazon/kindle/nln/NlnThumbnailAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "NlnThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$1;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$1;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->access$000(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$1;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->access$102(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;Z)Z

    :cond_0
    return-void
.end method
