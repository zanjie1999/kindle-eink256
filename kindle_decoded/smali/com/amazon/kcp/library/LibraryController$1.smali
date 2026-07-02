.class Lcom/amazon/kcp/library/LibraryController$1;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryController;->initializeLibrary(Z)V
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

    .line 212
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController$1;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController$1;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryController;->initialize()V

    return-void
.end method
