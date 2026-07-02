.class public Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProviderForTest.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.sqlitecontentproviderfortest"

.field static final AUTHORITY_URI:Landroid/net/Uri;

.field static final CONTENT_URIS:[Landroid/net/Uri;

.field static final ID_COLUMN_NAMES:[Ljava/lang/String;

.field static final MIME_SUBTYPES:[Ljava/lang/String;

.field static final TABLE_NAMES:[Ljava/lang/String;

.field static final VALUE_COLUMN_NAMES:[Ljava/lang/String;


# instance fields
.field private final mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://com.amazon.dcp.framework.sqlitecontentproviderfortest"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "table1"

    .line 13
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "table2"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v1, v4

    sput-object v1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->CONTENT_URIS:[Landroid/net/Uri;

    const-string v0, "Table1"

    const-string v1, "Table2"

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->TABLE_NAMES:[Ljava/lang/String;

    const-string v0, "ID1"

    const-string v1, "ID2"

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->ID_COLUMN_NAMES:[Ljava/lang/String;

    .line 21
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->MIME_SUBTYPES:[Ljava/lang/String;

    const-string v0, "VALUE1"

    const-string v1, "VALUE2"

    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->VALUE_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest$1;

    const/4 v1, 0x1

    const-string/jumbo v2, "test.db"

    invoke-direct {v0, p0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    const/4 v0, 0x0

    .line 51
    :goto_0
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->CONTENT_URIS:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    aget-object v1, v1, v0

    sget-object v3, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->ID_COLUMN_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    sget-object v5, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->MIME_SUBTYPES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->addURI(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->onCreate(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->mHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
