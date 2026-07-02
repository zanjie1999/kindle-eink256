.class Lcom/amazon/kcp/reader/ui/ViewOptionsRow$1;
.super Ljava/lang/Object;
.source "ViewOptionsRow.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ViewOptionsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ViewOptionsRow;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow$1;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow$1;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->sync()V

    return-void
.end method
