.class final Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;
.super Ljava/lang/Object;
.source "EndActionsGoodReadsShelfComponent.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

.field final synthetic this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Landroid/app/Activity;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;->this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;->$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;->$activity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1$1;-><init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
