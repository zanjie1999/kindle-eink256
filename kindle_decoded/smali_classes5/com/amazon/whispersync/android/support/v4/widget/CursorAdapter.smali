.class public abstract Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;,
        Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 138
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_0

    .line 266
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursorFilter:Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter;-><init>(Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursorFilter:Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursorFilter:Lcom/amazon/whispersync/android/support/v4/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 224
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 252
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2

    .line 248
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "couldn\'t move cursor to position "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 245
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    or-int/lit8 p3, p3, 0x2

    .line 166
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_0

    .line 168
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 171
    :cond_1
    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 172
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 173
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string p1, "_id"

    .line 174
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    const/4 p1, 0x2

    and-int/2addr p3, p1

    const/4 v0, 0x0

    if-ne p3, p1, :cond_3

    .line 176
    new-instance p1, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;)V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mChangeObserver:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 177
    new-instance p1, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {p1, p0, v0}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$1;)V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_2

    .line 179
    :cond_3
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mChangeObserver:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 180
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    :goto_2
    if-eqz v1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mChangeObserver:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz p1, :cond_4

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_5

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_5
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 160
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 337
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mChangeObserver:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 340
    :cond_2
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    .line 342
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mChangeObserver:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    .line 344
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    const/4 p1, 0x1

    .line 345
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 347
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    .line 349
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 352
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-object v0
.end method
