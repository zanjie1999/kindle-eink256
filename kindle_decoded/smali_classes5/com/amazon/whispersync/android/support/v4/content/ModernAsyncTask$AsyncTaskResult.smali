.class Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    .line 494
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
