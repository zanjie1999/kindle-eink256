.class final Lcom/amazon/kcp/library/LargeLibraryCounter$countListener$1;
.super Ljava/lang/Object;
.source "LargeLibraryCounter.kt"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LargeLibraryCounter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LargeLibraryCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryCounter$countListener$1;->this$0:Lcom/amazon/kcp/library/LargeLibraryCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)V
    .locals 3

    const-string/jumbo v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/library/LargeLibraryCounter$countListener$1;->this$0:Lcom/amazon/kcp/library/LargeLibraryCounter;

    iget-object v0, v0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
