.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BirdsEyeViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    iput-object p2, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-static {v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->access$300(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$3;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :cond_1
    return v1
.end method
