.class final Lcom/amazon/whispersync/dcp/framework/DBHelpers$1;
.super Ljava/lang/Object;
.source "DBHelpers.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/DBHelpers;->iterateOverCursor(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/Task<",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$task:Lcom/amazon/whispersync/dcp/framework/Task;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/Task;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DBHelpers$1;->val$task:Lcom/amazon/whispersync/dcp/framework/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers$1;->execute(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 1

    .line 57
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DBHelpers$1;->val$task:Lcom/amazon/whispersync/dcp/framework/Task;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/Task;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
