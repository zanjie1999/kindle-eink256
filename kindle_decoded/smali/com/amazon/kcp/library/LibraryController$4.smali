.class Lcom/amazon/kcp/library/LibraryController$4;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryController;->refreshBookDirectory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryController;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController$4;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController$4;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryController;->access$400(Lcom/amazon/kcp/library/LibraryController;)Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V

    return-void
.end method
