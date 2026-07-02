.class final Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;
.super Ljava/lang/Object;
.source "LargeCollectionsRepository.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $id:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic $listener:Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;

.field final synthetic $periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->$id:Lcom/amazon/kindle/model/content/IBookID;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->$listener:Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->$id:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->access$retrieveLibraryItem(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;Lcom/amazon/kindle/collections/dto/ICollection;)V

    invoke-static {v1}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
