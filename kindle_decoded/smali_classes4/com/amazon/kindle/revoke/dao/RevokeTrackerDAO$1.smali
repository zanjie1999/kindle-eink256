.class Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$1;
.super Ljava/lang/Object;
.source "RevokeTrackerDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->deleteRevokeTrackers(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$filesToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;Ljava/util/List;)V
    .locals 0

    .line 134
    iput-object p2, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$1;->val$filesToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$1;->val$filesToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method
