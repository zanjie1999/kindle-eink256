.class public Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;
.super Ljava/lang/Object;
.source "SQLiteStatementWrapper.java"


# instance fields
.field protected mInner:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public acquireReference()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    return-void
.end method

.method public bindBlob(I[B)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method getInner()Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public releaseReference()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    return-void
.end method

.method public releaseReferenceFromContainer()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReferenceFromContainer()V

    return-void
.end method

.method public simpleQueryForLong()J
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->mInner:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
