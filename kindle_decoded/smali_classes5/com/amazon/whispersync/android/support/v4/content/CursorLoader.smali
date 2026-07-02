.class public Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;
.super Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final mObserver:Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance p1, Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/content/Loader;)V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mObserver:Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance p1, Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/content/Loader;)V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mObserver:Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;

    .line 109
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 110
    iput-object p3, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 78
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mUri="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mProjection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelectionArgs="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSortOrder="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCursor="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mContentChanged="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .line 49
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 54
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mObserver:Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onReset()V

    .line 154
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->onStopLoading()V

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mObserver:Lcom/amazon/whispersync/android/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-void
.end method
