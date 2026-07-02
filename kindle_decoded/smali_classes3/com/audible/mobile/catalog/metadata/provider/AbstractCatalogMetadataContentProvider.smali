.class public abstract Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;
.super Landroid/content/ContentProvider;
.source "AbstractCatalogMetadataContentProvider.java"


# static fields
.field private static final CONST_MATCH_AUDIOBOOKS:I = 0x1

.field private static final CONST_MATCH_AUDIOBOOK_CHAPTERS:I = 0x5

.field private static final CONST_MATCH_AUDIOBOOK_FORMATS:I = 0x3

.field private static final CONST_MATCH_RELATIONSHIP:I = 0x7

.field private static final CONST_MATCH_RELATIONSHIP_METADATA:I = 0x9

.field public static final JOIN_RELATIONSHIP_AUDIOBOOK_TABLES:Ljava/lang/String;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RELATIONSHIP"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "AUDIOBOOKS"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "ASIN"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "%s LEFT JOIN %s ON %s.%s = %s.%s"

    .line 34
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->JOIN_RELATIONSHIP_AUDIOBOOK_TABLES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static configureUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;
    .locals 3

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 43
    sget-object v1, Lcom/audible/mobile/catalog/metadata/CatalogMetadataContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {v1, p0}, Lcom/audible/mobile/provider/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AUDIOBOOKS"

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "AUDIOBOOK_FORMATS"

    const/4 v2, 0x3

    .line 46
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "AUDIOBOOK_CHAPTERS"

    const/4 v2, 0x5

    .line 47
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RELATIONSHIP"

    const/4 v2, 0x7

    .line 48
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RELATIONSHIP_METADATA"

    const/16 v2, 0x9

    .line 49
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 112
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v0, p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    array-length p1, p2

    return p1

    :catchall_0
    move-exception p1

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 119
    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "vnd.android.cursor.dir/relationship_metadata"

    return-object p1

    :cond_1
    const-string p1, "vnd.android.cursor.dir/relationship"

    return-object p1

    :cond_2
    const-string p1, "vnd.android.cursor.dir/chapters"

    return-object p1

    :cond_3
    const-string p1, "vnd.android.cursor.dir/formats"

    return-object p1

    :cond_4
    const-string p1, "vnd.android.cursor.dir/audiobooks"

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 96
    sget-object v0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Provided values: {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 100
    sget-object p2, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "New ID for Insert: {}"

    invoke-interface {p2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 102
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()Z
    .locals 2

    .line 57
    sget-object v0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->configureUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 61
    :cond_0
    new-instance v0, Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 68
    iget-object v0, p0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RELATIONSHIP_METADATA"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sget-object p1, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->JOIN_RELATIONSHIP_AUDIOBOOK_TABLES:Ljava/lang/String;

    :goto_0
    move-object v2, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 72
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/audible/mobile/catalog/metadata/provider/AbstractCatalogMetadataContentProvider;->catalogMetadataDataSource:Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2
.end method
