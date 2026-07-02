.class final synthetic Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onDestroy$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "BookOpenActivity.kt"


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 6

    const-class v2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    const-string v3, "lifecycle"

    const-string v4, "getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    .line 263
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    .line 263
    check-cast p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setLifecycle$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;)V

    return-void
.end method
