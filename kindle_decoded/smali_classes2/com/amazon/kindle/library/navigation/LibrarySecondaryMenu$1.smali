.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewOptionsReset(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1$1;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
