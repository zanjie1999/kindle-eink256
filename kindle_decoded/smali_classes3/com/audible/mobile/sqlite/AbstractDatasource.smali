.class public abstract Lcom/audible/mobile/sqlite/AbstractDatasource;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AbstractDatasource.java"


# instance fields
.field private final currentDatabaseVersion:I

.field private final ddlResource:Lcom/audible/mobile/resource/InputStreamResource;

.field protected final logger:Lorg/slf4j/Logger;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/audible/mobile/resource/InputStreamResource;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    new-instance p1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/audible/mobile/sqlite/AbstractDatasource;->logger:Lorg/slf4j/Logger;

    .line 29
    iput p3, p0, Lcom/audible/mobile/sqlite/AbstractDatasource;->currentDatabaseVersion:I

    .line 30
    iput-object p4, p0, Lcom/audible/mobile/sqlite/AbstractDatasource;->ddlResource:Lcom/audible/mobile/resource/InputStreamResource;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 52
    iget v0, p0, Lcom/audible/mobile/sqlite/AbstractDatasource;->currentDatabaseVersion:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/audible/mobile/sqlite/AbstractDatasource;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 36
    new-instance v0, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;

    iget-object v1, p0, Lcom/audible/mobile/sqlite/AbstractDatasource;->ddlResource:Lcom/audible/mobile/resource/InputStreamResource;

    invoke-direct {v0, v1}, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;-><init>(Lcom/audible/mobile/resource/InputStreamResource;)V

    .line 37
    invoke-virtual {v0, p2, p3}, Lcom/audible/mobile/sqlite/LibraryDdlSqlLoader;->retrieveSql(II)Ljava/util/List;

    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lcom/audible/mobile/sqlite/AbstractDatasource;->logger:Lorg/slf4j/Logger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "Failed to execute SQL [%s] because of [%s]"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 44
    throw p1

    :cond_0
    return-void
.end method
