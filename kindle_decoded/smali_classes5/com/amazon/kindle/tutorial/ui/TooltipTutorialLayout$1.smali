.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$1;
.super Ljava/lang/Object;
.source "TooltipTutorialLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$1;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$1;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 107
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 108
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 109
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    sub-int/2addr p1, v5

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->offset:Landroid/graphics/Rect;

    .line 111
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$1;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-static {p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->access$000(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    return-object p2
.end method
