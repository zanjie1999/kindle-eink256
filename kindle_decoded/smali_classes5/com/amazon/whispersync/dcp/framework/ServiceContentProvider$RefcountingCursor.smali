.class Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;
.super Landroid/database/CursorWrapper;
.source "ServiceContentProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefcountingCursor"
.end annotation


# instance fields
.field final mInner:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;Landroid/database/CrossProcessCursor;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    .line 48
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 50
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->mInner:Landroid/database/CrossProcessCursor;

    .line 51
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$000(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 59
    :try_start_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result p1

    return p1
.end method
