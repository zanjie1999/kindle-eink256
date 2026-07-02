.class Lcom/amazon/kindle/content/dao/GroupContentDAO$5;
.super Ljava/lang/Object;
.source "GroupContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/DaoTransactionEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupItemDeleteEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bookId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic val$seriesId:Lcom/amazon/kindle/model/content/IBookID;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 256
    iput-object p2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    iput-object p3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->val$seriesId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteGroupItemEntry(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->val$seriesId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "GroupItems"

    .line 274
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 4

    .line 259
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 261
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "Attempting to delete GroupsItem entry: %s"

    .line 260
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->deleteGroupItemEntry(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 264
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 265
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 266
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "GroupItem entry deletion success: %s"

    .line 265
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
