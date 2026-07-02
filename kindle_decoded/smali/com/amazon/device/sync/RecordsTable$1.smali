.class Lcom/amazon/device/sync/RecordsTable$1;
.super Ljava/lang/Object;
.source "RecordsTable.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/RecordsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/Task<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/amazon/whispersync/Record;",
        ">;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/RecordsTable;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/RecordsTable;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/device/sync/RecordsTable$1;->this$0:Lcom/amazon/device/sync/RecordsTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/RecordsTable$1;->execute(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/amazon/device/sync/RecordsTable$1;->this$0:Lcom/amazon/device/sync/RecordsTable;

    invoke-virtual {v1, p1}, Lcom/amazon/device/sync/RecordsTable;->createRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
