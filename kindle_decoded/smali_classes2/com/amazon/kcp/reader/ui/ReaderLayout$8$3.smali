.class Lcom/amazon/kcp/reader/ui/ReaderLayout$8$3;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;)V
    .locals 0

    .line 1971
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$3;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1975
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$3;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method
