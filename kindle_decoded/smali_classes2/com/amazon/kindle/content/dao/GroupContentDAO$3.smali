.class Lcom/amazon/kindle/content/dao/GroupContentDAO$3;
.super Ljava/lang/Object;
.source "GroupContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/DaoTransactionEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupItemInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

.field final synthetic val$entry:Lcom/amazon/kindle/content/GroupItemMetadata;

.field final synthetic val$group:Lcom/amazon/kindle/content/GroupMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->val$entry:Lcom/amazon/kindle/content/GroupItemMetadata;

    iput-object p3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->val$group:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 5

    .line 193
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->val$entry:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "Attempting to add item entry to group: %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iget-object v3, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->val$group:Lcom/amazon/kindle/content/GroupMetadata;

    iget-object v4, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->val$entry:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-static {v0, p1, v3, v4}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$300(Lcom/amazon/kindle/content/dao/GroupContentDAO;Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)V

    .line 197
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;->val$entry:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Insert item success: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
