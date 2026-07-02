.class public Lcom/amazon/kindle/content/db/KindleContentDB;
.super Lcom/amazon/kindle/persistence/KindleDBHelper;
.source "KindleContentDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;
    }
.end annotation


# static fields
.field private static final TABLE_ODOT_MESSAGES:Ljava/lang/String; = "OdotMessages"

.field private static final TAG:Ljava/lang/String;

.field public static database_version:I

.field private static final periodicalsClause:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const-class v0, Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const/16 v0, 0x40

    .line 117
    sput v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->periodicalsClause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 131
    sget v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const-string v1, "kindle_library.db"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 132
    iput-object p1, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->context:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2984
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " add column "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2986
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2988
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "duplicate column"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2990
    sget-object p2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string p3, "Caught the following exception:"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 2993
    :cond_0
    throw p1
.end method

.method private appendToConsolidatedLibrary(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, " UNION SELECT *, 1 AS "

    .line 3091
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AsinCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM ("

    .line 3092
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") WHERE "

    .line 3093
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NOT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->periodicalsClause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createAfterAddGroupItemsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "after_add_group_items_update_group_sort"

    .line 1785
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER INSERT ON "

    .line 1787
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GroupItems"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN new."

    .line 1790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = (SELECT MIN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1791
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE "

    .line 1792
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = new."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1793
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT 1)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " BEGIN "

    .line 1794
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UPDATE "

    .line 1796
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Groups"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SET "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1797
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1798
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1799
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1801
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterDeleteGroupItemsCheckGroupValidityTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "after_delete_group_items_check_validity"

    .line 1753
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER DELETE ON "

    .line 1755
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GroupItems"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN old."

    .line 1757
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NOT IN(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 1758
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " GROUP BY "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1759
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " BEGIN "

    .line 1760
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DELETE FROM "

    .line 1762
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Groups"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = old."

    .line 1763
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1764
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1766
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterDeleteGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TRIGGER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "after_delete_group_items_update_last_accessed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AFTER DELETE ON "

    .line 1995
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GroupItems"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHEN old."

    .line 1997
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IN(SELECT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " FROM "

    .line 1998
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " GROUP BY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1999
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " BEGIN "

    .line 2000
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UPDATE "

    .line 2008
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Groups"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    .line 2009
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "COALESCE((SELECT MAX("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") FROM "

    .line 2010
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " git LEFT JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UserContent"

    .line 2011
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uct ON git."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = uct."

    .line 2012
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE git."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2013
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), -1) WHERE "

    .line 2014
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = old."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " END;"

    .line 2015
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 2017
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterDeleteGroupsSortItemTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "after_delete_group_items_update_group_sort"

    .line 1720
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1721
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER DELETE ON "

    .line 1722
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GroupItems"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN old."

    .line 1725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " IN (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 1726
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Groups"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WHERE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = old."

    .line 1727
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " BEGIN "

    .line 1728
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " UPDATE "

    .line 1734
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SET "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = (SELECT git."

    .line 1735
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " git JOIN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "KindleContent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kct ON git."

    .line 1737
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = kct."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE git."

    .line 1738
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY "

    .line 1739
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ASC, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1740
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ASC LIMIT 1)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1741
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1742
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1744
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterInsertGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TRIGGER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "after_insert_group_items_update_last_accessed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AFTER INSERT ON "

    .line 1965
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GroupItems"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHEN new."

    .line 1969
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IN(SELECT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " FROM "

    .line 1970
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UserContent"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BEGIN "

    .line 1971
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " UPDATE "

    .line 1979
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Groups"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    .line 1980
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "COALESCE((SELECT MAX("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") FROM "

    .line 1981
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " git LEFT JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uct ON git."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = uct."

    .line 1983
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE git."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1984
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), -1) WHERE "

    .line 1985
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = new."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " END;"

    .line 1986
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1988
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterInsertUserContentUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "after_insert_user_content_update_groups"

    .line 1933
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER INSERT ON "

    .line 1935
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UserContent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN new."

    .line 1937
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " IN(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 1938
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GroupItems"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BEGIN "

    .line 1939
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " UPDATE "

    .line 1947
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Groups"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    .line 1948
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "COALESCE((SELECT MAX("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") FROM "

    .line 1949
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " git LEFT JOIN "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uct ON git."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = uct."

    .line 1951
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE git."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1952
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1953
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), -1) WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " IN (SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1954
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE "

    .line 1955
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = new."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    .line 1956
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1957
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterUpdateGroupsSortItemTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "after_update_group_item_position_update_group_sort"

    .line 1689
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER UPDATE ON "

    .line 1691
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GroupItems"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN old."

    .line 1693
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " <> new."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " BEGIN "

    .line 1694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UPDATE "

    .line 1700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Groups"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = (SELECT git."

    .line 1701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " git JOIN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "KindleContent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kct ON git."

    .line 1703
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = kct."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE git."

    .line 1704
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = old."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ORDER BY "

    .line 1705
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ASC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1706
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ASC LIMIT 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1707
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1708
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1710
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAfterUpdateUserContentUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "after_update_user_content_update_groups"

    .line 1900
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER UPDATE ON "

    .line 1902
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UserContent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN old."

    .line 1905
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " <> new."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " AND new."

    .line 1906
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " IN(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 1907
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GroupItems"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BEGIN "

    .line 1908
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " UPDATE "

    .line 1916
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Groups"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    .line 1917
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "COALESCE((SELECT MAX("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") FROM "

    .line 1918
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " git LEFT JOIN "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uct ON git."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = uct."

    .line 1920
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE git."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1921
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1922
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), -1) WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " IN (SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1923
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE "

    .line 1924
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = new."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    .line 1925
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1926
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1928
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createBookIdIndexOnUserContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_USERCONTENT_KEY ON UserContent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2053
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createClearProgressOnContentArchived(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "clear_progress_on_content_archived"

    .line 2702
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER clear_progress_on_content_archived AFTER UPDATE OF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BEGIN UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UserContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = NULL WHERE KEY = old.ID AND old.STATE IN (\'LOCAL\', \'DOWNLOADING_OPENABLE\') AND new.STATE = \'REMOTE\'; END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2728
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2732
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createCollectionItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2775
    sget v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CollectionItems"

    .line 2780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 2781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 2782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 2783
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 2784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " REAL NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PRIMARY KEY ("

    .line 2785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 2786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 2787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to execute table creation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2793
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private createCollectionsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2736
    sget v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Collections"

    .line 2741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 2742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 2743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 2744
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 2745
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    .line 2746
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TEXT, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    .line 2747
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    .line 2748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to execute table creation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2754
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private createConsolidatedLibraryView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "DROP VIEW IF EXISTS ConsolidatedLibrary"

    .line 3012
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE VIEW "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ConsolidatedLibrary"

    .line 3028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS SELECT * FROM (SELECT *"

    .line 3029
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM ("

    .line 3030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") INNER JOIN (SELECT "

    .line 3031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",MAX("

    .line 3033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",COUNT("

    .line 3035
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AsinCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    .line 3036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->periodicalsClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GROUP BY "

    .line 3038
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") USING ("

    .line 3039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->appendToConsolidatedLibrary(Ljava/lang/StringBuilder;)V

    .line 3041
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createDeleteMasterContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "delete_master_content"

    .line 2466
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER delete_master_content AFTER UPDATE OF ARCHIVABLE ON KindleContent BEGIN DELETE FROM UserContent WHERE USER_ID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND KEY = old.ID AND old.ARCHIVABLE = 0 AND new.ARCHIVABLE = 1; END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2477
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2481
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createDeleteUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "delete_user_content"

    .line 2405
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2419
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const-string v1, "CREATE TRIGGER delete_user_content AFTER DELETE ON UserContent BEGIN UPDATE KindleContent SET USER_COUNT = USER_COUNT - 1 WHERE ID = old.KEY;  DELETE FROM KindleContent WHERE ID = old.KEY AND USER_COUNT = 0;  INSERT INTO PendingUserContentDeletes VALUES (old.KEY, old.USER_ID); END"

    if-eqz v0, :cond_0

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2423
    :cond_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createDictionaryIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_DICTIONARY ON KindleContent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2228
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createDictionaryInfoDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "dictionary_info_deleted"

    .line 2600
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER dictionary_info_deleted AFTER DELETE ON "

    .line 2604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DictionaryInfo"

    .line 2605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BEGIN DELETE FROM "

    .line 2606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DictionaryLocale"

    .line 2607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE ID = old.ID;"

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " END"

    .line 2609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2614
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createGroupItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GroupItems"

    .line 2023
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2024
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT REFERENCES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Groups"

    .line 2025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ITEM_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2027
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " REAL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2029
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v3, 0x35

    if-lt v2, v3, :cond_0

    .line 2032
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL_PREFIX:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    :cond_0
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v3, 0x3b

    if-lt v2, v3, :cond_1

    .line 2036
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "PRIMARY KEY ("

    .line 2039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2041
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 2042
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2045
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private createGroupItemsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1672
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterAddGroupItemsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1673
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterUpdateGroupsSortItemTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1674
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterDeleteGroupsSortItemTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1675
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterDeleteGroupItemsCheckGroupValidityTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1676
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUserContentAfterDeleteUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1677
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterUpdateUserContentUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1678
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterInsertUserContentUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1679
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterInsertGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1680
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterDeleteGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Groups"

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1809
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const-string v3, " INTEGER NOT NULL DEFAULT -1, "

    const-string v4, " TEXT, "

    const-string v5, ", "

    const/16 v6, 0x2b

    if-lt v2, v6, :cond_0

    .line 1812
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1813
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1814
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    :cond_0
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v6, 0x2e

    if-lt v2, v6, :cond_1

    .line 1818
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TOTAL_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1820
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_EXTENSION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1821
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    :cond_1
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    .line 1824
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1825
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    :cond_2
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v3, 0x35

    if-lt v2, v3, :cond_3

    .line 1828
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_COLLECTION_TYPES:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1829
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    :cond_3
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v3, 0x39

    if-lt v2, v3, :cond_4

    .line 1832
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    :cond_4
    sget v2, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v3, 0x3a

    if-lt v2, v3, :cond_5

    .line 1835
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHORS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHOR_PRONUNCIATIONS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ")"

    .line 1838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1841
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private createGroupsTitleIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_GROUPS_TITLE ON Groups ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1858
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1861
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createGroupsTitleSortIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_GROUPS_TITLE_ORDER ON Groups ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1849
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1852
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createIndexForCollectionItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 2798
    sget v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_COLLECTION_ITEM_ID ON CollectionItems("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2800
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2802
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createIndexForCollections(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 2759
    sget v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_COLLECTIONS_USER_ID ON Collections ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE INDEX IF NOT EXISTS I_COLLECTIONS_TITLE ON Collections ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2764
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2767
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created index: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "created index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createIndexForUserContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX I_LAST_ACCESSED ON UserContent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " DESC )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2319
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2320
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2323
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createBookIdIndexOnUserContent(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createIndexesForOdotMessages(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_OM_PROCESS_MESSAGES ON "

    .line 2835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OdotMessages"

    .line 2836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2837
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/messaging/OdotMessageField;->STATUS:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2838
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRIES:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2839
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE INDEX IF NOT EXISTS I_OM_PURGE_MESSAGES ON "

    .line 2842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/messaging/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2844
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE INDEX IF NOT EXISTS I_OM_PROCESS_OR_PURGE_MESSAGES ON "

    .line 2847
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->REQUESTER:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2849
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->STATUS:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2850
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRIES:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2851
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 2853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 2854
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 2855
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    :goto_0
    if-ge v3, v1, :cond_1

    .line 2857
    aget-object v0, v2, v3

    .line 2858
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2860
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createInsertUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "insert_user_content"

    .line 2387
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2397
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const-string v1, "CREATE TRIGGER insert_user_content AFTER INSERT ON UserContent BEGIN UPDATE KindleContent SET USER_COUNT = USER_COUNT + 1 WHERE ID = new.KEY; END"

    if-eqz v0, :cond_0

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2401
    :cond_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createKindleContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    const-string v0, "kindle_content_deleted"

    .line 2363
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER kindle_content_deleted AFTER DELETE ON KindleContent BEGIN DELETE FROM LocalContent WHERE KEY = old.ID; DELETE FROM UserContent WHERE KEY = old.ID;"

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_0

    .line 2372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DELETE FROM DictionaryInfo WHERE ID = old.ID;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2b

    if-lt p2, v1, :cond_1

    .line 2375
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DELETE FROM GroupItems WHERE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = old.ID;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2377
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2379
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2383
    :cond_2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createKindleContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 8

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    .line 2063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2065
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2066
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2067
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL,"

    .line 2068
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER DEFAULT 0 NOT NULL,"

    .line 2071
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TEXT, "

    .line 2072
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2073
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2076
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER, "

    .line 2077
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2078
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2079
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "USER_COUNT INTEGER DEFAULT 0, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2081
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER DEFAULT 0"

    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " INTEGER NOT NULL DEFAULT -1"

    const-string v4, ", "

    const/16 v5, 0xc

    if-lt p2, v5, :cond_0

    .line 2087
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2088
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v5, 0xd

    const-string v6, " TEXT"

    if-lt p2, v5, :cond_1

    .line 2091
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v5, 0xf

    if-lt p2, v5, :cond_2

    .line 2096
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v5, 0x11

    if-lt p2, v5, :cond_3

    .line 2103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_MULTIMEDIA_CONTENT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v5, 0x12

    if-lt p2, v5, :cond_4

    .line 2107
    iget-object v5, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/amazon/kindle/krl/R$bool;->supports_sortable_columns_in_db:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v5, 0x14

    if-lt p2, v5, :cond_5

    .line 2113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " TEXT NOT NULL DEFAULT \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v5, 0x16

    if-lt p2, v5, :cond_6

    .line 2117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x17

    if-lt p2, v1, :cond_7

    .line 2124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v1, 0x20

    if-lt p2, v1, :cond_8

    .line 2129
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x23

    if-lt p2, v1, :cond_9

    .line 2133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-le p2, v1, :cond_a

    .line 2136
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/16 v1, 0x27

    if-lt p2, v1, :cond_b

    .line 2146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->EXTENDED_METADATA:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2148
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/16 v1, 0x2c

    const/4 v2, 0x0

    const-string v3, " INTEGER DEFAULT "

    if-lt p2, v1, :cond_c

    .line 2152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c
    const/16 v1, 0x34

    const-string v5, "\' "

    const-string v7, " TEXT DEFAULT \'"

    if-lt p2, v1, :cond_d

    .line 2157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const/16 v1, 0x36

    if-lt p2, v1, :cond_e

    .line 2163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e
    const/16 v1, 0x37

    if-lt p2, v1, :cond_f

    .line 2168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const/16 v1, 0x3c

    if-lt p2, v1, :cond_10

    .line 2173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_DETAILS_JSON:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/16 v1, 0x3d

    if-lt p2, v1, :cond_11

    .line 2178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_LOADED_COVER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    const/16 v1, 0x3f

    if-lt p2, v1, :cond_12

    .line 2183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_12
    const-string p2, ");"

    .line 2187
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2190
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "table: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_13
    return-void
.end method

.method private createLocalArchivableContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "local_archivable_content_deleted"

    .line 2515
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2524
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const-string v1, "CREATE TRIGGER local_archivable_content_deleted AFTER DELETE ON LocalContent BEGIN UPDATE KindleContent SET STATE = \'REMOTE\' WHERE ID = old.key AND ARCHIVABLE = 1; END"

    if-eqz v0, :cond_0

    .line 2525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2528
    :cond_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createLocalConsolidatedLibraryView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "DROP VIEW IF EXISTS LocalConsolidatedLibrary"

    .line 3049
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3065
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE VIEW "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "LocalConsolidatedLibrary"

    .line 3066
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS SELECT * FROM (SELECT *"

    .line 3067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM ("

    .line 3068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") INNER JOIN (SELECT "

    .line 3069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",MAX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",COUNT("

    .line 3072
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AsinCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    .line 3073
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3076
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->periodicalsClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GROUP BY "

    .line 3083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") USING ("

    .line 3084
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->appendToConsolidatedLibrary(Ljava/lang/StringBuilder;)V

    .line 3087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createLocalContentArchivedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "local_content_archived"

    .line 2342
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER local_content_archived AFTER UPDATE OF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BEGIN DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LocalContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE KEY = old.ID AND old.STATE IN (\'LOCAL\') AND new.STATE = \'REMOTE\'; END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2356
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2359
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createLocalContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "local_content_deleted"

    .line 2485
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER local_content_deleted AFTER DELETE ON LocalContent BEGIN DELETE FROM KindleContent WHERE ID = old.KEY AND ARCHIVABLE = 0 AND ID NOT IN (SELECT KEY FROM RecommendedContent); INSERT OR REPLACE INTO PendingDeletes ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " )  VALUES (old.KEY, old.FILE_PATH, old.LAST_MODIFIED); END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2507
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2511
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createLocalContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LocalContent"

    .line 2237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ENCRYPTED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    const/16 v2, 0x1e

    if-lt p2, v2, :cond_0

    .line 2246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TEXT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0x31

    if-lt p2, v2, :cond_1

    .line 2249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, ")"

    .line 2252
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2255
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "table: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private createNewItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LauncherNewItems"

    .line 2301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2302
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2303
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRIMARY KEY ("

    .line 2304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2305
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "));"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2312
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createOdotMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 2809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OdotMessages"

    .line 2811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->ID:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->PAYLOAD:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " BLOB NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->TOPIC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/messaging/OdotMessageField;->STATUS:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/messaging/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2816
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/messaging/OdotMessageField;->CRC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2817
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/messaging/OdotMessageField;->SIGNATURE:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2818
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRIES:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/messaging/OdotMessageField;->TOKEN_ID:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2820
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/messaging/OdotMessageField;->REQUESTER:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2821
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/messaging/OdotMessageField;->TRANSPORT:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/messaging/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/kindle/messaging/OdotMessageField;

    .line 2823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 2824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to execute table creation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2830
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPendingUserContentDeletesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PendingUserContentDeletes"

    .line 2642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 2643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 2646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2649
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createPublicationDateUpdatedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "periodical_publication_date_updated"

    .line 2656
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER periodical_publication_date_updated AFTER UPDATE OF PUBLICATION_DATE ON KindleContent WHEN new.TYPE IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 2673
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') BEGIN UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET IS_MOST_RECENT_ISSUE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WHERE TITLE = new.TITLE AND IS_MOST_RECENT_ISSUE = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND PUBLICATION_DATE < new.PUBLICATION_DATE; UPDATE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " WHERE ID = new.ID AND (SELECT COUNT(1) FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE TITLE = new.TITLE AND IS_MOST_RECENT_ISSUE = 1) = 0; END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2688
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2692
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createRecommendedContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "delete_rec_content"

    .line 2427
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER delete_rec_content AFTER DELETE ON RecommendedContent WHEN (SELECT COUNT(1) FROM RecommendedContent WHERE KEY = old.KEY) = 0 BEGIN  DELETE FROM UserContent WHERE KEY = old.KEY AND (SELECT COUNT(1) FROM KindleContent WHERE ID = old.KEY AND (ARCHIVABLE = 1 OR STATE IS NOT \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    .line 2437
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')) = 0; END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2439
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2443
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createRecommendedContentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RecommendedContent"

    .line 2452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORDER_RANK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CAMPAIGN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 2457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2460
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createTitleAuthorIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_AUTHOR ON KindleContent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2198
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS I_TITLE ON KindleContent ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2202
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2203
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createTitleAuthorSortOrderIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS I_AUTHOR_ORDER ON KindleContent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2211
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS I_AUTHOR_ORDER_REVERSED ON KindleContent ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2215
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS I_TITLE_ORDER ON KindleContent ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2220
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createUpdateMostRecentPeriodicalTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "most_recent_periodical_updated"

    .line 2532
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "most_recent_periodical_deleted"

    .line 2533
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER most_recent_periodical_updated AFTER INSERT ON KindleContent WHEN new.TYPE IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 2548
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\') BEGIN UPDATE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KindleContent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SET IS_MOST_RECENT_ISSUE = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " WHERE TITLE = new.TITLE AND IS_MOST_RECENT_ISSUE = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND PUBLICATION_DATE < new.PUBLICATION_DATE; UPDATE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " WHERE ID = new.ID AND (SELECT COUNT(1) FROM "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE TITLE = new.TITLE AND IS_MOST_RECENT_ISSUE = 1) = 0; END;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2563
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v5

    const-string/jumbo v6, "trigger: "

    if-eqz v5, :cond_0

    .line 2564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2567
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TRIGGER most_recent_periodical_deleted AFTER DELETE ON KindleContent WHEN old.TYPE IN (\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 2581
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') AND old.IS_MOST_RECENT_ISSUE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " BEGIN UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHERE ID = (SELECT ID FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE TITLE = old.TITLE ORDER BY PUBLICATION_DATE DESC LIMIT 1); END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2592
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2596
    :cond_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createUserContentAfterDeleteUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "after_delete_user_content_update_groups"

    .line 1866
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1867
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TRIGGER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER DELETE ON "

    .line 1868
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UserContent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN 0 = (SELECT COUNT(*) FROM "

    .line 1870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    .line 1871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = old."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BEGIN "

    .line 1872
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " UPDATE "

    .line 1880
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Groups"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = COALESCE((SELECT MAX("

    .line 1881
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") FROM "

    .line 1882
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GroupItems"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " git LEFT JOIN "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uct ON git."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = uct."

    .line 1884
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE git."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1885
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1886
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), -1) WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " IN (SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1887
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    .line 1889
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DELETE FROM "

    .line 1891
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1892
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " END;"

    .line 1893
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->logTrigger(Ljava/lang/StringBuilder;)V

    .line 1895
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createUserContentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UserContent"

    .line 2265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL, "

    .line 2269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER, "

    .line 2281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER DEFAULT -1,"

    .line 2283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL DEFAULT \'0\', "

    .line 2285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRIMARY KEY ("

    .line 2286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "));"

    .line 2289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2295
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static dropOdotMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2869
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const-string v1, "DROP TABLE IF EXISTS OdotMessages"

    if-eqz v0, :cond_0

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2872
    :cond_0
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .line 2999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3001
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop trigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3005
    :cond_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private installTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 2327
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentArchivedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2328
    sget v0, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2329
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createInsertUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2330
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2331
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2332
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalArchivableContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2333
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteMasterContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2334
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUpdateMostRecentPeriodicalTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2335
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createPublicationDateUpdatedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2336
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createRecommendedContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2337
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createClearProgressOnContentArchived(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2338
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryInfoDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private logTrigger(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1774
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setLocaleOnDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 206
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() caught SQLiteException when trying to set locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 213
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    throw v0
.end method

.method private setupPendingDeleteTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 2620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PendingDeletes"

    .line 2621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 2622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT DEFAULT \'\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRIMARY KEY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 2628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2632
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2636
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private updateFileSizeForLocalItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .line 1641
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "LocalContent"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 1644
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1645
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v2, v8

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    aput-object v0, v2, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1644
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1648
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1649
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1651
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1652
    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    .line 1654
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1655
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentSize(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "LocalContent"

    .line 1656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1658
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1661
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1662
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1663
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1666
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    return-void

    :catchall_0
    move-exception v1

    .line 1643
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 1662
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    .line 1663
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1664
    throw v0
.end method

.method private updateSortItemsForGroups(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET "

    .line 1627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = (SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 1628
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GroupItems"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " git JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KindleContent"

    .line 1629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " kct ON git."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = kct."

    .line 1630
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE git."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    .line 1631
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY "

    .line 1632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ASC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ASC LIMIT 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update groups sort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1637
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    const-string v0, ", "

    .line 580
    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upgrading database to version 10..."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "ALTER TABLE KindleContent RENAME TO KINDLE_TEMP"

    .line 585
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 587
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KindleContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", CAST("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " AS INTEGER), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "USER_COUNT"

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " FROM KINDLE_TEMP"

    .line 608
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE KINDLE_TEMP"

    .line 612
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createTitleAuthorIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentArchivedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0xa

    .line 618
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 619
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteMasterContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUpdateMostRecentPeriodicalTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 623
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createPublicationDateUpdatedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 625
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 626
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 629
    throw v0
.end method

.method private upgradeToVersion11(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 635
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 11..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 640
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createPendingUserContentDeletesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 641
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 642
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 645
    throw v0
.end method

.method private upgradeToVersion12(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 650
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 12..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "KindleContent"

    .line 654
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    throw v0
.end method

.method private upgradeToVersion13(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 678
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 14..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "UserContent"

    .line 682
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 686
    throw v0
.end method

.method private upgradeToVersion14(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 664
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 13..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "KindleContent"

    .line 668
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 672
    throw v0
.end method

.method private upgradeToVersion15(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const-string v0, "TEXT"

    const-string v1, "KindleContent"

    .line 692
    sget-object v2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading database to version 15..."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 695
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 700
    throw v0
.end method

.method private upgradeToVersion16(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 706
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 16..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 710
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createRecommendedContentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createRecommendedContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 712
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 715
    throw v0
.end method

.method private upgradeToVersion17(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 721
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 17..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "KindleContent"

    .line 724
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_MULTIMEDIA_CONTENT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 728
    throw v0
.end method

.method private upgradeToVersion18(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    const-string v0, "TEXT"

    const-string v1, "KindleContent"

    .line 734
    sget-object v2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading database to version 18..."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$bool;->supports_sortable_columns_in_db:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 740
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v2, 0x0

    .line 744
    :try_start_0
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "KindleContent"

    const/4 v0, 0x6

    new-array v7, v0, [Ljava/lang/String;

    .line 748
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 750
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v7, v4

    const/4 v0, 0x2

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 751
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const/4 v0, 0x3

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 752
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const/4 v0, 0x4

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 753
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const/4 v0, 0x5

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 754
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    .line 748
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 755
    iget-object v0, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v0

    .line 757
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 759
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 760
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 759
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 761
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 762
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 761
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 763
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 764
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 763
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 765
    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 766
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 765
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 767
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 768
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 767
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 769
    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 770
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 769
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 772
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 773
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 774
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v10, v7, v6}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 777
    invoke-interface {v0, v10, v9, v8}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 776
    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    aput-object v5, v7, v3

    invoke-virtual {p1, v1, v11, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 783
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 786
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 786
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 789
    throw v0
.end method

.method private upgradeToVersion19(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const-string v0, "  AS TEXT), "

    const-string v1, " CAST( "

    const-string v2, ", "

    const-string v3, " INTEGER, "

    const-string v4, "UserContent"

    const-string v5, " , "

    const-string v6, " TEXT, "

    .line 794
    sget-object v7, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "upgrading database to version 19..."

    invoke-static {v7, v8}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v7, "ALTER TABLE UserContent RENAME TO TABLE_LOCAL_CONTENT"

    .line 799
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 800
    sget-object v7, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v8, "Renamed user table "

    invoke-static {v7, v8}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CREATE TABLE IF NOT EXISTS "

    .line 803
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 805
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 806
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 807
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " INTEGER NOT NULL, "

    .line 808
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 809
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 811
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 813
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " INTEGER DEFAULT -1,"

    .line 816
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PRIMARY KEY ("

    .line 817
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 818
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 819
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "));"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "table: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "kindle_content_deleted"

    .line 826
    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v3, "insert_user_content"

    .line 827
    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v3, "delete_user_content"

    .line 828
    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v3, "delete_master_content"

    .line 829
    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v3, "delete_rec_content"

    .line 830
    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 832
    sget-object v3, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v6, "created new user table "

    invoke-static {v3, v6}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "INSERT INTO "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 836
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 837
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 840
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 843
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 845
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " FROM TABLE_LOCAL_CONTENT"

    .line 848
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Copied the data from local to new user table  "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE TABLE_LOCAL_CONTENT"

    .line 853
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 854
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "dropped local  "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexForUserContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 857
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, " >>>>>>> created index  createIndexForUserContent "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x13

    .line 859
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 860
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "created index  createKindleContentDeletedTrigger "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createInsertUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 862
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "created index  createInsertUserContentTrigger "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteUserContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 864
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "created index  createDeleteUserContentTrigger "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteMasterContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 866
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "created index  createDeleteMasterContentTrigger "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createRecommendedContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 868
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "created index  createRecommendedContentDeletedTrigger "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 871
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "successful upgrading database to version 19..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 874
    throw v0
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    const-string v0, "KindleContent"

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 369
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 374
    throw v0
.end method

.method private upgradeToVersion20(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    .line 881
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 20..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "KindleContent"

    .line 884
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEXT NOT NULL DEFAULT \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 886
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 889
    throw v0
.end method

.method private upgradeToVersion21(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 895
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 21..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "DELETE FROM RecommendedContent"

    .line 899
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 900
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 901
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 904
    throw v0
.end method

.method private upgradeToVersion22(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const-string v0, "TEXT"

    const-string v1, "KindleContent"

    .line 909
    sget-object v2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading database to version 22..."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 912
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 919
    throw v0
.end method

.method private upgradeToVersion23(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const-string v0, "TEXT"

    const-string v1, "KindleContent"

    .line 925
    sget-object v2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading database to version 23..."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 928
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 933
    throw v0
.end method

.method private upgradeToVersion24(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 939
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading the database to version 24..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 942
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createCollectionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 943
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexForCollections(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 944
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createCollectionItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 947
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createRecommendedContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 949
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 952
    throw v0
.end method

.method private upgradeToVersion25(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const-string v0, "TEXT"

    const-string v1, "UserContent"

    .line 958
    sget-object v2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading database to version 25..."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 961
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 967
    throw v0
.end method

.method private upgradeToVersion26(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 972
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading the database to version 26..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 976
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 977
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryLocaleTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 979
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 982
    throw v0
.end method

.method private upgradeToVersion27(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 988
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading the database to version 27..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 992
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createClearProgressOnContentArchived(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 994
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 997
    throw v0
.end method

.method private upgradeToVersion28(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 22

    move-object/from16 v1, p1

    const-string v0, "dropped temp table: "

    const-string v2, "DROP TABLE "

    const-string v3, " FROM "

    const-string v4, " SELECT "

    const-string v5, "INSERT INTO "

    const-string v6, "));"

    const-string v7, " PRIMARY KEY ("

    const-string v8, "("

    const-string v9, "CREATE TABLE IF NOT EXISTS "

    const-string v10, " RENAME TO "

    const-string v11, "ALTER TABLE "

    const-string v12, ", "

    const-string v13, "DictionaryInfo"

    const-string v14, " TEXT, "

    const-string v15, "_temp"

    move-object/from16 v16, v13

    const-string v13, "DictionaryLocale"

    move-object/from16 v17, v0

    .line 1003
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    move-object/from16 v18, v2

    const-string/jumbo v2, "upgrading database to version 28..."

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1007
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v10

    const-string v10, "alter Table: "

    if-eqz v2, :cond_0

    .line 1014
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1016
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1022
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1024
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1028
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v6

    const-string v6, "table: "

    if-eqz v2, :cond_1

    .line 1031
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1037
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1038
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v21, v3

    const-string v3, "table content copied: "

    if-eqz v2, :cond_2

    .line 1044
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v18

    .line 1050
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    .line 1060
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v19

    .line 1061
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1065
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1067
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1075
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1076
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1077
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1078
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1081
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1083
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1087
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1088
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1089
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1090
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    .line 1091
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    .line 1102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1110
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryInfoDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1111
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v2, "created  createDictionaryInfoDeletedTrigger "

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v0, 0x1c

    move-object/from16 v2, p0

    .line 1114
    :try_start_4
    invoke-direct {v2, v1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1115
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v3, "created  createKindleContentDeletedTrigger "

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1118
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading successful"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1120
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1121
    throw v0
.end method

.method private upgradeToVersion29(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 27

    const-string v1, " IS NULL OR "

    const-string v2, ""

    .line 1132
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v3, "Upgrading database to version 29"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x1

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/16 v16, 0x0

    const/4 v12, 0x1

    :try_start_0
    const-string v6, "KindleContent"

    new-array v7, v12, [Ljava/lang/String;

    .line 1139
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "( "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " = ?) AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " IN (?, ?)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/String;

    aput-object v2, v9, v16

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p1

    const/4 v15, 0x1

    move-object v12, v0

    const/4 v14, 0x2

    move-object/from16 v13, v17

    .line 1139
    :try_start_1
    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1145
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to list of titles without a parent asin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1148
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 1156
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    const/4 v14, 0x2

    const/4 v15, 0x1

    :goto_2
    const/4 v4, 0x0

    .line 1153
    :goto_3
    :try_start_3
    sget-object v5, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v6, "Error upgrading to version 29"

    invoke-static {v5, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1160
    :cond_1
    :goto_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1161
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    :try_start_4
    const-string v19, "KindleContent"

    new-array v0, v15, [Ljava/lang/String;

    .line 1167
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " IS NOT NULL AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " != ?) AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-array v6, v14, [Ljava/lang/String;

    aput-object v2, v6, v16

    aput-object v5, v6, v15

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "1"

    move-object/from16 v18, p1

    move-object/from16 v20, v0

    move-object/from16 v22, v6

    invoke-virtual/range {v18 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1172
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1174
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1175
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v0

    goto :goto_6

    :cond_2
    const/4 v6, 0x0

    .line 1178
    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found parent asin = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for title = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_3

    .line 1183
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    const/4 v6, 0x0

    .line 1180
    :goto_8
    :try_start_6
    sget-object v7, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v8, "Unable to upgrade to version 29"

    invoke-static {v7, v8, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_3

    goto :goto_7

    .line 1189
    :cond_3
    :goto_9
    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1190
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " = ? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " IN (? , ?) AND ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " = ?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v16

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 1196
    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v15

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const-string v10, "KindleContent"

    move-object/from16 v11, p1

    .line 1193
    invoke-virtual {v11, v10, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rows with parent asin. Paren asin = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , title = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_5

    :cond_4
    move-object/from16 v11, p1

    const/4 v9, 0x3

    goto/16 :goto_5

    :goto_a
    if-eqz v4, :cond_5

    .line 1183
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1185
    :cond_5
    throw v0

    .line 1202
    :cond_6
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Did not find any periodicals that needed their parent asin to be backfilled"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 1209
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "BackfillParentAsinOnRecovery"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 1211
    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v2, "Unable to flag CMS parent asin backfill"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1214
    :goto_b
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Successfully upgraded database to version 29"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v15

    :catchall_2
    move-exception v0

    move-object v15, v4

    :goto_c
    if-eqz v15, :cond_8

    .line 1156
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1158
    :cond_8
    throw v0
.end method

.method private upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .line 380
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 382
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->setupPendingDeleteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 386
    throw v0
.end method

.method private upgradeToVersion30(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 1219
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 30..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "LocalContent"

    .line 1222
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1226
    throw v0
.end method

.method private upgradeToVersion31(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 1251
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading the database to version 31..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createOdotMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1256
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexesForOdotMessages(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1258
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1261
    throw v0
.end method

.method private upgradeToVersion32(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 1232
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 32..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1235
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE KindleContent add column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TAG"

    const-string v2, "A device on an unreleased db version 31 upgraded to 32. This exception shouldn\'t happen on a released build."

    .line 1242
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1244
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1245
    throw v0
.end method

.method private upgradeToVersion33(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    .line 1267
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 33..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1271
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1272
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1275
    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_DEFERRED_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v5, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_OPTIONAL_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "KindleContent"

    .line 1277
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "DROP TRIGGER IF EXISTS clear_progress_on_content_archived"

    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1283
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createClearProgressOnContentArchived(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1287
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "created  createClearProgressOnContentArchived "

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1290
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1293
    throw v0
.end method

.method private upgradeToVersion34(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    .line 1299
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 34..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1303
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1304
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1307
    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->FAILED_DEFERRED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "KindleContent"

    .line 1309
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1311
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1312
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1315
    throw v0
.end method

.method private upgradeToVersion35(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .line 1321
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 35..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1324
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE KindleContent add column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1329
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1332
    throw v0
.end method

.method private upgradeToVersion36(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const-string v0, "INTEGER NOT NULL DEFAULT -1"

    const-string v1, "KindleContent"

    .line 1339
    sget-object v2, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "upgrading database to version 36..."

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1342
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createTitleAuthorSortOrderIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1347
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1348
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1351
    throw v0
.end method

.method private upgradeToVersion37(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1358
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading the database to version 37..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1361
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropOdotMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1363
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1366
    throw v0
.end method

.method private upgradeToVersion38(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1370
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading the database to version 38..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "DROP TABLE PendingDeletes"

    .line 1378
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1380
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->setupPendingDeleteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1382
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1384
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1387
    throw v0
.end method

.method private upgradeToVersion39(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1392
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 39..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1395
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE KindleContent add column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->EXTENDED_METADATA:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1400
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1403
    throw v0
.end method

.method private upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 392
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "KindleContent"

    .line 394
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 398
    throw v0
.end method

.method private upgradeToVersion40(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1407
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 40..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1410
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE UserContent add column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL DEFAULT \'0\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1415
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1418
    throw v0
.end method

.method private upgradeToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1422
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 41..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1425
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createBookIdIndexOnUserContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1427
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1428
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1431
    throw v0
.end method

.method private upgradeToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1435
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 42..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1438
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1439
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1440
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1441
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrade successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1444
    throw v0
.end method

.method private upgradeToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1448
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 43"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Groups"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupsTitleSortIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1453
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupItemsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1454
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->updateSortItemsForGroups(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1458
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 44"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleContent"

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1465
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterDeleteGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1466
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUserContentAfterDeleteUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1470
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 46"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TOTAL_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Groups"

    const-string v2, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_EXTENSION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUserContentAfterDeleteUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1476
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterUpdateUserContentUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1477
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterInsertUserContentUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1478
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterInsertGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1479
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createAfterDeleteGroupItemsUpdateLastAccessedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1483
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUserContentAfterDeleteUpdateGroupsTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1487
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 48"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Groups"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1492
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 49"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalContent"

    const-string v2, "INTEGER NOT NULL DEFAULT -1"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->updateFileSizeForLocalItems(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .line 405
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 407
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalArchivableContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 408
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    throw v0
.end method

.method private upgradeToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1498
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 50"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexForCollectionItems(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1503
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 51"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1507
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1508
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRANSFERRING"

    .line 1511
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "KindleContent"

    .line 1513
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1515
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1516
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1519
    throw v0
.end method

.method private upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "\' "

    const-string v1, "TEXT DEFAULT \'"

    const-string v2, "KindleContent"

    .line 1523
    sget-object v3, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "upgrading database to version 52"

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1526
    :try_start_0
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1529
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "version 52 update successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1532
    throw v0
.end method

.method private upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "TEXT DEFAULT \'\' "

    .line 1536
    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upgrading database to version 53"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "Groups"

    .line 1539
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_COLLECTION_TYPES:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupItems"

    .line 1540
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL_PREFIX:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1542
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "version 53 update successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1545
    throw v0
.end method

.method private upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1549
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 54"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleContent"

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1555
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 55"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1558
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createNewItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1559
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1560
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "version 55 update successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1563
    throw v0
.end method

.method private upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1567
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 56"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleContent"

    const-string v2, "TEXT DEFAULT \'\'"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1572
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 57"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT DEFAULT \'\'"

    const-string v2, "Groups"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KindleContent"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1581
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 58"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHORS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT DEFAULT \'\'"

    const-string v2, "Groups"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHOR_PRONUNCIATIONS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1587
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 59"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupItems"

    const-string v2, "TEXT DEFAULT \'\'"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    .line 417
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 6..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "delete_master_content"

    .line 421
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER delete_master_content AFTER UPDATE OF ARCHIVABLE ON KindleContent BEGIN DELETE FROM UserContent WHERE USER_ID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND KEY = old.ID AND old.ARCHIVABLE = 0 AND new.ARCHIVABLE = 1; END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/amazon/kindle/content/db/KindleContentDB;->getAmazonAccountUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 436
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 437
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "UserContent"

    const-string v5, "USER_ID = ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 438
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    aput-object v0, v6, v1

    const/4 v7, 0x4

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 442
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upgrading successful"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 445
    throw v0
.end method

.method private upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1593
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT DEFAULT \'\'"

    const-string v2, "KindleContent"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1598
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 61"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_DETAILS_JSON:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleContent"

    const-string v2, "TEXT DEFAULT \'\'"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1603
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 62"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_LOADED_COVER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleContent"

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1608
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 63"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleContent"

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1613
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading database to version 64"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupsTitleIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    const-string v0, "LocalContent"

    const-string v1, " WHERE "

    const-string v2, ", "

    .line 468
    sget-object v3, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "upgrading database to version 7..."

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v3, "KindleContent"

    .line 473
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE KindleContent SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " IN (SELECT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE LocalContent RENAME TO LOCAL_TEMP"

    .line 483
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 485
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 489
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 491
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ENCRYPTED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 492
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " FROM LOCAL_TEMP"

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE LOCAL_TEMP"

    .line 497
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 500
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalArchivableContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 501
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 502
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 505
    throw v0
.end method

.method private upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 512
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "KindleContent"

    .line 514
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTEGER DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/db/KindleContentDB;->addColumnAndCatch(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUpdateMostRecentPeriodicalTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 518
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 521
    throw v0
.end method

.method private upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    const-string v0, ", "

    .line 527
    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upgrading database to version 9..."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "ALTER TABLE KindleContent RENAME TO KINDLE_TEMP"

    .line 533
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 535
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KindleContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 545
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 550
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "USER_COUNT"

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 555
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " FROM KINDLE_TEMP"

    .line 556
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE KINDLE_TEMP"

    .line 560
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createTitleAuthorIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentArchivedTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0x9

    .line 566
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentDeletedTrigger(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 567
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDeleteMasterContentTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 568
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUpdateMostRecentPeriodicalTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 570
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 571
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "upgrading successful"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 574
    throw v0
.end method


# virtual methods
.method public createDictionaryInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " TEXT, "

    .line 2908
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    .line 2910
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DictionaryInfo"

    .line 2911
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    .line 2912
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2913
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2914
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2915
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2916
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2917
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PRIMARY KEY ("

    .line 2918
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "));"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2923
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2925
    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not duplicate createDictionaryInfoTable content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createDictionaryLocaleTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " TEXT, "

    .line 2881
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    .line 2882
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DictionaryLocale"

    .line 2883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2885
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2887
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PRIMARY KEY ("

    .line 2889
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2890
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "));"

    .line 2891
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2893
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2897
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2899
    sget-object p1, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;->DICTIONARY_TABLE_CREATED:Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->fireParseEvent(Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception creating dictionary locale table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected fireParseEvent(Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;)V
    .locals 2

    .line 2939
    iget-object v0, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 2940
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 2941
    const-class v1, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;

    .line 2942
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 2945
    :cond_0
    new-instance v0, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;-><init>(Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;)V

    .line 2946
    iget-object p1, p0, Lcom/amazon/kindle/content/db/KindleContentDB;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected getAmazonAccountUserId()Ljava/lang/String;
    .locals 1

    .line 464
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->setLocaleOnDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "onCreate() ended"

    .line 138
    sget-object v1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() called"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    :try_start_0
    sget v1, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createKindleContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 142
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createTitleAuthorIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createTitleAuthorSortOrderIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    sget v1, Lcom/amazon/kindle/content/db/KindleContentDB;->database_version:I

    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalContentTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 146
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createUserContentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexForUserContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createRecommendedContentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryIndexForKindleContent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createDictionaryLocaleTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->installTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->setupPendingDeleteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createPendingUserContentDeletesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createCollectionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexForCollections(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createCollectionItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createIndexForCollectionItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupsTitleSortIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createGroupItemsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createNewItemsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    sget-object p1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 181
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    sget-object p1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    throw v1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 219
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDowngrade "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onLocaleChange(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kindle/content/db/KindleContentDB;->setLocale()V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createConsolidatedLibraryView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->createLocalConsolidatedLibraryView(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    .line 362
    sget-object p1, Lcom/amazon/kindle/content/db/KindleContentDB;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detected invalid DB version "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 234
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 236
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 238
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 240
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 242
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 244
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 246
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 248
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 250
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion11(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 252
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion12(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 254
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion13(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 256
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion14(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 258
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion15(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 260
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion16(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 262
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion17(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 264
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion18(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 266
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion19(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 268
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion20(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 270
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion21(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 272
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion22(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 274
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion23(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 276
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion24(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 278
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion25(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 280
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion26(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 282
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion27(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 284
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion28(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 286
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion29(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 288
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion30(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 290
    :pswitch_1d
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion31(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 292
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion32(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 294
    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion33(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 296
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion34(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 298
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion35(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 300
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion36(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 302
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion37(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion38(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 308
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 310
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 314
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 322
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 326
    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 328
    :pswitch_30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion50(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 332
    :pswitch_32
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 334
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 336
    :pswitch_34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 338
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 340
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    :pswitch_37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    :pswitch_38
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    :pswitch_39
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    :pswitch_3a
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 350
    :pswitch_3b
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 352
    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 354
    :pswitch_3d
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    :pswitch_3e
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/db/KindleContentDB;->upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
    .end packed-switch
.end method

.method public setLocale()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/db/KindleContentDB;->setLocaleOnDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
