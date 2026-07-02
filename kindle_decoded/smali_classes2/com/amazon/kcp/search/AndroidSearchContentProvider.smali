.class public Lcom/amazon/kcp/search/AndroidSearchContentProvider;
.super Landroid/content/ContentProvider;
.source "AndroidSearchContentProvider.java"


# static fields
.field public static final ACTION_ARCHIVED_ITEM:Ljava/lang/String; = "com.amazon.search.intent.downloadItem"

.field public static final ACTION_LOCAL_BOOK:Ljava/lang/String; = "com.amazon.search.intent.launchBook"

.field public static final AUTHORITY:Ljava/lang/String; = "kindle"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGEST:I


# instance fields
.field private resultsCursor:Landroid/database/MatrixCursor;

.field protected uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_text_2"

    const-string v3, "suggest_intent_query"

    const-string v4, "suggest_intent_extra_data"

    const-string v5, "suggest_intent_action"

    const-string v6, "suggest_shortcut_id"

    .line 43
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 41
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->resultsCursor:Landroid/database/MatrixCursor;

    return-void
.end method

.method private columnValuesFromBook(JLcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 106
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 107
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kindle/model/content/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 108
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 109
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const/4 p1, 0x5

    aput-object p4, v0, p1

    const/4 p1, 0x6

    const-string p2, "_-1"

    aput-object p2, v0, p1

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 86
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->resultsCursor:Landroid/database/MatrixCursor;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 92
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->resultsCursor:Landroid/database/MatrixCursor;

    add-long/2addr v4, v0

    const-string v6, "com.amazon.search.intent.launchBook"

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->columnValuesFromBook(JLcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->resultsCursor:Landroid/database/MatrixCursor;

    add-long/2addr v4, v0

    const-string v6, "com.amazon.search.intent.downloadItem"

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->columnValuesFromBook(JLcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1
    move-wide v0, v4

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->resultsCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method


# virtual methods
.method protected buildUriMatcher(Ljava/lang/String;)Landroid/content/UriMatcher;
    .locals 3

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const/4 v1, 0x0

    const-string v2, "search_suggest_query"

    .line 56
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "search_suggest_query/*"

    .line 57
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object p1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL Passed to Search Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    const-string v0, "kindle"

    .line 64
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->buildUriMatcher(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 72
    iget-object p2, p0, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-le p3, p4, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 78
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/AndroidSearchContentProvider;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad URL Passed to Search Provider: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 150
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
