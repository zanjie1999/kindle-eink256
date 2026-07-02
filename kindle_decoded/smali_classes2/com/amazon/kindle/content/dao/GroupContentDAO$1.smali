.class Lcom/amazon/kindle/content/dao/GroupContentDAO$1;
.super Ljava/lang/Object;
.source "GroupContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/DaoTransactionEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupDeletionEntry(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

.field final synthetic val$groupId:Lcom/amazon/kindle/model/content/IBookID;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iput-object p2, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;->val$groupId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;->apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;->this$0:Lcom/amazon/kindle/content/dao/GroupContentDAO;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;->val$groupId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$000(Lcom/amazon/kindle/content/dao/GroupContentDAO;Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 132
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    invoke-static {}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->access$100()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
