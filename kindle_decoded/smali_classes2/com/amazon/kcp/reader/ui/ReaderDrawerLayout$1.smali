.class Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;
.super Ljava/lang/Object;
.source "ReaderDrawerLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 50
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->access$002(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 52
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->access$100(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->access$200(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;)V

    return-object p2
.end method
