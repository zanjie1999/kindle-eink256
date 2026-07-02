.class Lcom/amazon/article/reader/ArticleReaderActivity$12;
.super Ljava/lang/Object;
.source "ArticleReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->activateScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

.field final synthetic val$intent:Lcom/amazon/kindle/krx/ui/ScreenletIntent;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->val$intent:Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1300(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1400(Lcom/amazon/article/reader/ArticleReaderActivity;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1500(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1600(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1800(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1700(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 714
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1900(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/Screenlet;->onActivate()V

    .line 715
    iget-object v0, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v0}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$1900(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$12;->val$intent:Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/Screenlet;->onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    return-void
.end method
