.class Lcom/amazon/kcp/library/LibraryController$2;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryController;->initialize()V
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

    .line 243
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController$2;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LibraryController - postInitialize"

    const/4 v1, 0x1

    .line 245
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryController$2;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryController;->access$000(Lcom/amazon/kcp/library/LibraryController;)V

    const/4 v1, 0x0

    .line 247
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
