.class final Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4$1;
.super Ljava/lang/Object;
.source "EndActionsGoodReadsShelfComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4$1;->this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4$1;->this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;

    iget-object v1, v0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;->this$0:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;

    iget-object v0, v0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;->$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    const-string v2, "blockingTutorialFragment"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->access$layoutTutorial(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    return-void
.end method
