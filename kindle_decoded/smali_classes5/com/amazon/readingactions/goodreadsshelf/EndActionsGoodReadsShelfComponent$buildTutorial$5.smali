.class final Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;
.super Ljava/lang/Object;
.source "EndActionsGoodReadsShelfComponent.kt"

# interfaces
.implements Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field final synthetic this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;->this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;->$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;->this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    iget-object v0, v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "view"

    .line 368
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;->$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method
