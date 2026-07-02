.class Lcom/amazon/kcp/periodicals/ui/BookmarkButton$1;
.super Ljava/lang/Object;
.source "BookmarkButton.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/BookmarkButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton$1;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton$1;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->access$000(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton$1;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->access$100(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V

    :cond_0
    return-void
.end method
