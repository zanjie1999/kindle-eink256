.class public final Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CompanionMappingSQLiteOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "companion_mapping.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "companion_mapping.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getInstance()Lcom/audible/hushpuppy/common/event/EventBusFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method dropExistingTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 77
    sget-object v0, Lcom/audible/relationship/db/CompanionMappingDbContract;->ALL_TABLE_NAMES_ARR:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " DROP TABLE IF EXISTS  \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'; "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 56
    sget-object v0, Lcom/audible/relationship/db/CompanionMappingDbContract;->CREATE_TABLE_SQL_ARR:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->DB_CREATION_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;->dropExistingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
