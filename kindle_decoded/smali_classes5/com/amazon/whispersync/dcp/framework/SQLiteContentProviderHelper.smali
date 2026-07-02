.class public abstract Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;
.super Ljava/lang/Object;
.source "SQLiteContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;
    }
.end annotation


# instance fields
.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field private mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mDatabaseName:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mDatabaseVersion:I

    .line 54
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    return-void
.end method


# virtual methods
.method protected addURI(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->addURI(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public applyBatch(Landroid/content/ContentProvider;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProvider;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->applyBatch(Landroid/content/ContentProvider;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;)Z
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mDatabaseName:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mDatabaseVersion:I

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->setOpenHelper(Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->setContentResolver(Landroid/content/ContentResolver;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onCreateDatabase(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
.end method

.method protected abstract onUpgradeDatabase(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
