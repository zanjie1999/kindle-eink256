.class final Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;
.super Ljava/lang/Object;
.source "EpisodeRowViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeRowViewController;->updateDecorator(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $showSpinner:Z

.field final synthetic this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/panels/EpisodeRowViewController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    iput-boolean p2, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->$showSpinner:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->access$getRowView$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/falkor/R$id;->episode_title_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-static {v1}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->access$getRowView$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/amazon/falkor/R$id;->episode_title_lock:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 73
    iget-boolean v4, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->$showSpinner:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 74
    iget-boolean v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->$showSpinner:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeRowViewController$updateDecorator$runnable$1;->this$0:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->access$isPaywalled$p(Lcom/amazon/falkor/panels/EpisodeRowViewController;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
