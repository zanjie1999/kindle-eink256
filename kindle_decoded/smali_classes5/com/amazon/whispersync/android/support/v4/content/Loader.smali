.class public Lcom/amazon/whispersync/android/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;,
        Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    .line 39
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mAbandoned:Z

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mReset:Z

    .line 41
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mAbandoned:Z

    .line 262
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onAbandon()V

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    invoke-static {p1, v0}, Lcom/amazon/whispersync/android/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo p1, "}"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 367
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mContentChanged="

    .line 369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mAbandoned="

    .line 370
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 371
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public forceLoad()V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->forceLoad()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    :goto_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    return-void
.end method

.method public registerListener(ILcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 132
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;

    .line 133
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mId:I

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onReset()V

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mReset:Z

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    .line 293
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mAbandoned:Z

    .line 294
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    return-void
.end method

.method public final startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mReset:Z

    .line 196
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mAbandoned:Z

    .line 197
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mStarted:Z

    .line 243
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    .line 312
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    .line 313
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    invoke-static {p0, v0}, Lcom/amazon/whispersync/android/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mListener:Lcom/amazon/whispersync/android/support/v4/content/Loader$OnLoadCompleteListener;

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
