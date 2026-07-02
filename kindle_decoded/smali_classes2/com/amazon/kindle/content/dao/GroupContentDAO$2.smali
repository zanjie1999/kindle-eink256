.class Lcom/amazon/kindle/content/dao/GroupContentDAO$2;
.super Ljava/lang/Object;
.source "GroupContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/DaoTransactionEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

.field final synthetic val$group:Lcom/amazon/kindle/content/GroupMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;->val$group:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;->apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 3

    .line 157
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;->val$group:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Attempting to insert group: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;->val$group:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$200(Lcom/amazon/kindle/content/dao/GroupContentDAO;Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;)V

    .line 161
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
