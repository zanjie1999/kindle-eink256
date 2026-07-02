.class Lcom/amazon/kindle/content/dao/GroupContentDAO$4;
.super Ljava/lang/Object;
.source "GroupContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/DaoTransactionEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupItemUpdateEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

.field final synthetic val$groupId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic val$item:Lcom/amazon/kindle/content/GroupItemMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$item:Lcom/amazon/kindle/content/GroupItemMetadata;

    iput-object p3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$groupId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateGroupItemEntry(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$groupId:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$item:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$400(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Landroid/content/ContentValues;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$groupId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$item:Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 246
    invoke-virtual {v3}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "GroupItems"

    .line 247
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 228
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 4

    .line 231
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$item:Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 233
    invoke-virtual {v3}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "Attempting to update group item entry %s"

    .line 232
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->updateGroupItemEntry(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 236
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;->val$item:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Group item update success: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
