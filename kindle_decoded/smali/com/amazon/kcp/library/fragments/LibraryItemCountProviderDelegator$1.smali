.class Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator$1;
.super Ljava/lang/Object;
.source "LibraryItemCountProviderDelegator.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->bindLibraryAdapterFragment(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterDataChanged()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->access$000(Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;)V

    return-void
.end method
