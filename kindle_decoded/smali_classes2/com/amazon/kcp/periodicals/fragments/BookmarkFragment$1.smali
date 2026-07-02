.class Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$1;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->onOrientationChanged()V

    return-void
.end method
