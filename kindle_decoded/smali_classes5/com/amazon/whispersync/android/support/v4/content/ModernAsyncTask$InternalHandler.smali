.class Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$1;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    .line 471
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    iget-object p1, v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object p1, v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->access$500(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
