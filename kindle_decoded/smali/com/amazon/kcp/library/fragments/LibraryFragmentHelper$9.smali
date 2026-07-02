.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

.field final synthetic val$listener:Lcom/amazon/kcp/library/PausableListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Lcom/amazon/kcp/library/PausableListener;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;->val$listener:Lcom/amazon/kcp/library/PausableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;->val$listener:Lcom/amazon/kcp/library/PausableListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onRefresh(Lcom/amazon/kcp/library/PausableListener;)V

    return-void
.end method
