.class Lcom/amazon/kcp/library/LibraryFragment$1;
.super Ljava/lang/Object;
.source "LibraryFragment.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$1;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryViewSelected(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$1;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/library/LibraryFragment;->access$000(Lcom/amazon/kcp/library/LibraryFragment;Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    return-void
.end method
