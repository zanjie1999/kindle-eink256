.class final Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;
.super Ljava/lang/Object;
.source "ArticleLayout.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/ui/ArticleLayout;->populateArticleTextElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/ui/ArticleLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/ui/ArticleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;->this$0:Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;->this$0:Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->getArticleTitleTextView()Lcom/amazon/android/ui/UiFontTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;->this$0:Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/ArticleLayout;->getArticleTitleTextView()Lcom/amazon/android/ui/UiFontTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;->this$0:Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-static {v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->access$setIntroMaxLinesForTwoLineTitle(Lcom/amazon/kcp/home/ui/ArticleLayout;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;->this$0:Lcom/amazon/kcp/home/ui/ArticleLayout;

    invoke-static {v0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->access$setIntroMaxLinesForSingleLineTitle(Lcom/amazon/kcp/home/ui/ArticleLayout;)V

    :goto_0
    return v1
.end method
