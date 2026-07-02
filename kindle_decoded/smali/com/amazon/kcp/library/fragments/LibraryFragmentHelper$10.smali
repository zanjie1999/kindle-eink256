.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$10;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$10;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$10;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->swapList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
