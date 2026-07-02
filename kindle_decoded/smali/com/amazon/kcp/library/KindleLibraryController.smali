.class public final Lcom/amazon/kcp/library/KindleLibraryController;
.super Lcom/amazon/kcp/library/LibraryController;
.source "KindleLibraryController.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/content/ILibraryService;Ljava/util/Set;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtinUserIds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scanLocalContentUtils"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pubSubMessageService"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryController;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/content/ILibraryService;Ljava/util/Set;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-void
.end method


# virtual methods
.method protected createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    const-string v0, "libraryView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/amazon/kcp/library/KindleLibraryController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/library/LibraryController;->createShowLibraryViewIntent(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryController;->context:Landroid/content/Context;

    invoke-static {}, Lcom/amazon/kcp/home/Home;->getTabId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLibraryTabId()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kcp/library/LibraryTab;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryScreenlet;->newIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    const-string v0, "LibraryScreenlet.newIntent(bundle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
