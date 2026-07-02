.class final Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 227
    iput-object p3, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 228
    iput-object p4, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method callOnLoadFinished(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 418
    iget-object v0, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    const-string v2, "onLoadFinished"

    .line 419
    iput-object v2, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    move-object v0, v1

    .line 422
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onLoadFinished in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_2

    .line 427
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x1

    .line 430
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 426
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p2, p2, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_3

    .line 427
    iget-object p2, p2, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_3
    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method destroy()V
    .locals 5

    .line 324
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 326
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    const/4 v1, 0x0

    .line 327
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 328
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 329
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Reseting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v2, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    const-string v4, "onLoaderReset"

    .line 333
    iput-object v4, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 336
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-interface {v0, v4}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Lcom/amazon/whispersync/android/support/v4/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput-object v2, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 338
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_3
    throw v0

    .line 343
    :cond_4
    :goto_1
    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 344
    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 345
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 346
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    if-eqz v0, :cond_6

    .line 347
    iget-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v2, :cond_5

    .line 348
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 349
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->unregisterListener(Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->reset()V

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_7

    .line 354
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    .line 449
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    const-string v1, "  "

    if-eqz v0, :cond_0

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    .line 457
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    .line 461
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    .line 462
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 463
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    .line 464
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    .line 465
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method finishRetain()V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 276
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 278
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onLoadComplete(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 359
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 362
    sget-boolean p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 369
    sget-boolean p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_4

    .line 378
    sget-boolean p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Switching to pending loader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    const/4 p1, 0x0

    .line 379
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 380
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p2, p2, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p2, v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 381
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 382
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->installLoader(Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    return-void

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v0, p2, :cond_5

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_6

    .line 389
    :cond_5
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 391
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_6

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 402
    :cond_6
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_7

    const/4 p2, 0x0

    .line 404
    iput-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 405
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 406
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->remove(I)V

    .line 409
    :cond_7
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result p1

    if-nez p1, :cond_8

    .line 410
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_8
    return-void
.end method

.method reportStart()V
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 303
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method retain()V
    .locals 2

    .line 267
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 269
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method start()V
    .locals 4

    .line 232
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_0

    .line 236
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    return-void

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1

    return-void

    .line 245
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 247
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_3

    .line 249
    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Lcom/amazon/whispersync/android/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    if-eqz v0, :cond_7

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 254
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_6

    .line 259
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v2, p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->registerListener(ILcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 260
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->startLoading()V

    :cond_7
    return-void
.end method

.method stop()V
    .locals 3

    .line 311
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 313
    iget-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v2, :cond_1

    .line 316
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 317
    invoke-virtual {v1, p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->unregisterListener(Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 318
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->stopLoading()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/android/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
