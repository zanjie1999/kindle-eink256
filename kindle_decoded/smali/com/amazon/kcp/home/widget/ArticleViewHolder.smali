.class public final Lcom/amazon/kcp/home/widget/ArticleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ArticleShovelerWidgetAdapter.kt"


# instance fields
.field private final articleLayout:Lcom/amazon/kcp/home/ui/ArticleLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/ui/ArticleLayout;)V
    .locals 1

    const-string v0, "articleLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ArticleViewHolder;->articleLayout:Lcom/amazon/kcp/home/ui/ArticleLayout;

    return-void
.end method


# virtual methods
.method public final getArticleLayout()Lcom/amazon/kcp/home/ui/ArticleLayout;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ArticleViewHolder;->articleLayout:Lcom/amazon/kcp/home/ui/ArticleLayout;

    return-object v0
.end method
