.class public Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseOpenerHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecentSearchDatabaseOpenerHelper.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "KindleReaderRecentSearchTermsAndroid.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseOpenerHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS CUSTOMER_TERMS (BookId TEXT,Term TEXT,Timestamp INTEGER,PRIMARY KEY (BookId, Term));"

    .line 45
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER refreshDatabaseOnInsert AFTER INSERT ON CUSTOMER_TERMS BEGIN DELETE FROM CUSTOMER_TERMS WHERE BookId = NEW.BookId AND Term NOT IN (SELECT Term FROM CUSTOMER_TERMS WHERE BookId = NEW.BookId ORDER BY Timestamp DESC LIMIT 10); END"

    .line 46
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 50
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS CUSTOMER_TERMS;"

    .line 59
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseOpenerHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception p2

    .line 62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 63
    throw p2
.end method
