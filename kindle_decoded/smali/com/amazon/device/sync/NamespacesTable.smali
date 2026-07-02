.class public Lcom/amazon/device/sync/NamespacesTable;
.super Ljava/lang/Object;
.source "NamespacesTable.java"


# static fields
.field private static final NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String; = "namespaces"


# instance fields
.field private final mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "namespace"

    aput-object v2, v0, v1

    const-string v1, "%s = ?"

    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/NamespacesTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/sync/NamespacesTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    return-void
.end method

.method private createNamespaceRow(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "namespace"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J
    .locals 1

    .line 34
    new-instance v0, Lcom/amazon/device/sync/NamespacesTable;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/NamespacesTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNamespaces(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/device/sync/NamespacesTable;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/NamespacesTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    .line 41
    invoke-virtual {v0}, Lcom/amazon/device/sync/NamespacesTable;->getNamespaces()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIdOrCreate(Ljava/lang/String;)J
    .locals 5

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/NamespacesTable;->createNamespaceRow(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/amazon/device/sync/NamespacesTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v2, Lcom/amazon/device/sync/NamespacesTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo p1, "namespaces"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->insertIfAbsent(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNamespaces()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/device/sync/NamespacesTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    const-string/jumbo v1, "namespaces"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/amazon/device/sync/NamespacesTable$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/sync/NamespacesTable$1;-><init>(Lcom/amazon/device/sync/NamespacesTable;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
