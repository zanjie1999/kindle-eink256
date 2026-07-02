.class final Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;
.super Ljava/lang/Object;
.source "LargeLibraryRepositoryImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getDownloadedBooks$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAccessDateDidChange(Ljava/util/Set;)V

    .line 509
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$refreshAccessDates$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getDownloadedBooks$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;->clear()V

    return-void
.end method
