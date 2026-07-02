.class final Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LargeLibraryRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudibleBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryRepositoryImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,554:1\n1571#2,9:555\n1819#2:564\n1820#2:566\n1580#2:567\n1571#2,9:568\n1819#2:577\n1820#2:579\n1580#2:580\n1#3:565\n1#3:578\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryRepositoryImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver\n*L\n540#1,9:555\n540#1:564\n540#1:566\n540#1:567\n541#1,9:568\n541#1:577\n541#1:579\n541#1:580\n540#1:565\n541#1:578\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x576f18b6

    if-eq v0, v1, :cond_2

    const v1, 0x68ccc7e3

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "com.audible.hushpuppy.action.COMPANION_DELETED"

    .line 535
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_2
    const-string v0, "com.audible.hushpuppy.action.COMPANION_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_0
    const-string p1, "EBOOK_ASINS"

    .line 537
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 538
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_7

    .line 555
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 563
    check-cast v1, Ljava/lang/String;

    .line 540
    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getLibraryService$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 563
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 568
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 576
    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 541
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 576
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 542
    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 544
    iget-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$AudibleBroadcastReceiver;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {p2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;->handleBooksAudibleCompanionDidChange(Ljava/util/Set;)V

    .line 545
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getHasSeenAudibleContent$cp()Z

    move-result p1

    if-nez p1, :cond_7

    .line 546
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object p2, Lcom/amazon/kcp/application/PerfMarker;->FTUE_AUDIBLE_FIRST_SYNCED:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 547
    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$setHasSeenAudibleContent$cp(Z)V

    :cond_7
    :goto_3
    return-void
.end method
