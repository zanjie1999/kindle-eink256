.class Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest$1;
.super Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;
.source "SQLiteContentProviderForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;Ljava/lang/String;I)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;

    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onCreateDatabase(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, 0x0

    .line 33
    :goto_0
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->TABLE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->ID_COLUMN_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderForTest;->VALUE_COLUMN_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TEXT NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUpgradeDatabase(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V
    .locals 0

    return-void
.end method
