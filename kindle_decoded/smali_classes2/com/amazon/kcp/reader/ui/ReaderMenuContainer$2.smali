.class Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;
.super Ljava/lang/Object;
.source "ReaderMenuContainer.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    new-instance v1, Landroid/graphics/Rect;

    .line 144
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    .line 145
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 146
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    .line 147
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$102(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$100(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$100(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 152
    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$100(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$100(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 151
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-object p2
.end method
