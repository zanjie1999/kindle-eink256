.class public Lcom/amazon/whispersync/dcp/framework/SQLTable;
.super Ljava/lang/Object;
.source "SQLTable.java"


# instance fields
.field private mColumnDefinitionMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mTableDefinition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLTable;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnDefinitionMapping:Ljava/util/Map;

    .line 23
    iget-object v0, p1, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mName:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnDefinitionMapping:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mName:Ljava/lang/String;

    return-void
.end method

.method public static createTablesInDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/SQLTable;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 140
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    .line 142
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->createInDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw p1
.end method


# virtual methods
.method public addBooleanColumn(Ljava/lang/String;Z)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 74
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BETWEEN 0 AND 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addCheckedColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public addCheckedColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "%s CHECK (%s)"

    .line 62
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnDefinitionMapping:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addEnumColumn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "\', \'"

    .line 67
    invoke-static {v1, p3}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "%s IN (\'%s\')"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addCheckedColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public varargs addForeignKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, ", "

    .line 43
    invoke-static {p2, p4}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const-string p2, "%s REFERENCES %s (%s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public varargs addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, ", "

    .line 54
    invoke-static {p2, p4}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const-string p2, "%s REFERENCES %s (%s) ON DELETE CASCADE"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public varargs addPrimaryKey(Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ","

    .line 97
    invoke-static {v1, p2}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "PRIMARY KEY (%s) ON CONFLICT %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public varargs addUniquenessConstraint(Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ","

    .line 104
    invoke-static {v1, p2}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "UNIQUE (%s) ON CONFLICT %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object p1

    return-object p1
.end method

.method public createInDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getColumnNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public removeColumn(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnDefinitionMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mColumnDefinitionMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLTable;->mTableDefinition:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CREATE TABLE %s (%s);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
