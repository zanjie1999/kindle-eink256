.class final Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;
.super Ljava/lang/Object;
.source "GroupItemBaseScreenlet.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/GroupItemBaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewModeChanged(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getSupportFragmentManager$LibraryModule_release()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "getSupportFragmentManager().beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->Companion:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;->getCONTAINER_ID()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/library/fragments/IFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->Companion:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;->getCONTAINER_ID()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getCurrentContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
