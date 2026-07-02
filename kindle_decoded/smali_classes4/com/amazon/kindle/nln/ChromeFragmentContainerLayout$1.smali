.class Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout$1;
.super Ljava/lang/Object;
.source "ChromeFragmentContainerLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout$1;->this$0:Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout$1;->this$0:Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;->access$000(Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout$1;->this$0:Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;->access$000(Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 25
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 26
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 27
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 24
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-object p2
.end method
