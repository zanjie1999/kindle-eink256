.class Lcom/amazon/kcp/reader/ui/MagnifyingGlass$1;
.super Ljava/lang/Object;
.source "MagnifyingGlass.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/MagnifyingGlass;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass$1;->this$0:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass$1;->this$0:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->access$000(Lcom/amazon/kcp/reader/ui/MagnifyingGlass;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass$1;->this$0:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->access$100(Lcom/amazon/kcp/reader/ui/MagnifyingGlass;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    return-object p2
.end method
