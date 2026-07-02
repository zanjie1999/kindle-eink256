.class Lcom/amazon/article/reader/ArticleReaderActivity$6;
.super Ljava/lang/Object;
.source "ArticleReaderActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->initNavigationBarScrollSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean v0, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    if-ne p2, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    :cond_0
    if-nez p2, :cond_1

    .line 290
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    :cond_1
    if-nez p2, :cond_2

    .line 294
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean v3, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    if-eqz v3, :cond_2

    .line 295
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 296
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean v3, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    if-eqz v3, :cond_3

    .line 299
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 300
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean v0, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    if-nez v0, :cond_a

    .line 306
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    if-ne p2, v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget v0, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->previousOffset:I

    if-nez v0, :cond_5

    neg-int v0, p2

    goto :goto_0

    :cond_5
    sub-int/2addr v0, p2

    :goto_0
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 316
    iget-object v3, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v3}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 320
    :cond_6
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    if-ne p2, v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    :cond_7
    if-nez p2, :cond_8

    .line 325
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    .line 327
    :cond_8
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput p2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->previousOffset:I

    if-nez p2, :cond_9

    .line 330
    iget-boolean v1, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    if-eqz v1, :cond_9

    .line 331
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 332
    iput-boolean v2, v0, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithZero:Z

    .line 334
    :cond_9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    neg-int p1, p1

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$6;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    if-eqz p2, :cond_a

    .line 335
    iput-boolean v2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 336
    iput-boolean v2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->endWithMinusHeight:Z

    :cond_a
    return-void
.end method
