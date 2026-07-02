.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->executeNextStep$krxsdk_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBackPressed$krxsdk_release()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    .line 281
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting driver for book: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->executeStep$krxsdk_release()V

    .line 283
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setCurrentDriver$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;)V

    :cond_0
    return-void
.end method
