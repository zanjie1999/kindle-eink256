.class public final Lcom/amazon/falkor/FalkorFullSyncManager;
.super Ljava/lang/Object;
.source "FalkorFullSync.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorFullSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorFullSync.kt\ncom/amazon/falkor/FalkorFullSyncManager\n*L\n1#1,178:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

.field private final followedStoriesStoriesDownloadManager:Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

.field private final followupWeblab$delegate:Lkotlin/Lazy;

.field private final messageQueue$delegate:Lkotlin/Lazy;

.field private final newCustomerDownloadManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

.field private final onFullSyncSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final weblab$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/falkor/FalkorFullSyncManager;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string/jumbo v4, "weblab"

    const-string v5, "getWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "followupWeblab"

    const-string v5, "getFollowupWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string/jumbo v3, "messageQueue"

    const-string v4, "getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v0, 0x2

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/falkor/FalkorFullSyncManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "newCustomerDownloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followedStoriesStoriesDownloadManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorPrefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->newCustomerDownloadManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    iput-object p2, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followedStoriesStoriesDownloadManager:Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    iput-object p3, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    iput-object p4, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 64
    const-class p1, Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    .line 66
    new-instance p1, Lcom/amazon/falkor/FalkorFullSyncManager$weblab$2;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/FalkorFullSyncManager$weblab$2;-><init>(Lcom/amazon/falkor/FalkorFullSyncManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->weblab$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/amazon/falkor/FalkorFullSyncManager$followupWeblab$2;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/FalkorFullSyncManager$followupWeblab$2;-><init>(Lcom/amazon/falkor/FalkorFullSyncManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followupWeblab$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lcom/amazon/falkor/FalkorFullSyncManager$messageQueue$2;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/FalkorFullSyncManager$messageQueue$2;-><init>(Lcom/amazon/falkor/FalkorFullSyncManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->messageQueue$delegate:Lkotlin/Lazy;

    .line 161
    new-instance p1, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;-><init>(Lcom/amazon/falkor/FalkorFullSyncManager;)V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->onFullSyncSuccess:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getFalkorPrefs$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Lcom/amazon/falkor/FalkorPluginPrefs;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final checkRequirements()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/falkor/FalkorFullSyncManager;->getWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "T1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->getHasFullSyncValidated()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/falkor/FalkorFullSyncManager;->getFollowupWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->getIsAppFreshInstall()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final finish(Ljava/lang/String;)V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "falkor full sync finished with reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private final getFollowupWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followupWeblab$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/FalkorFullSyncManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    return-object v0
.end method

.method private final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 3

    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->messageQueue$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/FalkorFullSyncManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method private final getWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->weblab$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/FalkorFullSyncManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    return-object v0
.end method

.method private final processFollowedStoriesData(Lcom/amazon/falkor/models/FollowedStories;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "FullSyncNoFollowDataNull"

    .line 140
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->setSyncValidatedAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/falkor/models/FollowedStories;->getStories()Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    const-string p1, "FullSyncYesFollowStoriesNotEmpty"

    .line 144
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->requestSyncAndFinish(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "FullSyncNoNewCustEmptyFollow"

    .line 146
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->setSyncValidatedAndFinish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final processNewCustomerData(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "FullSyncNoNewCustDataNull"

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->setSyncValidatedAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followedStoriesStoriesDownloadManager:Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p1, v0, :cond_1

    .line 127
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followedStoriesStoriesDownloadManager:Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/falkor/models/FollowedStories;

    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->processFollowedStoriesData(Lcom/amazon/falkor/models/FollowedStories;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followedStoriesStoriesDownloadManager:Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    new-instance v0, Lcom/amazon/kindle/krx/content/BaseBook;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 130
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "followedStoriesStoriesDownloadManager download initiated"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "FullSyncYesOldCust"

    .line 134
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->requestSyncAndFinish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final requestSyncAndFinish(Ljava/lang/String;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Lcom/amazon/falkor/FalkorFullSyncManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;

    iget-object v2, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->onFullSyncSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->finish(Ljava/lang/String;)V

    return-void
.end method

.method private final setSyncValidatedAndFinish(Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->setHasFullSyncValidated()V

    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->finish(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFollowedStoriesDownloadFinished(Z)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/amazon/falkor/FalkorFullSyncManager;->checkRequirements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFollowedStoriesDownloadFinished but conditions failed. aborting."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->followedStoriesStoriesDownloadManager:Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/falkor/models/FollowedStories;

    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->processFollowedStoriesData(Lcom/amazon/falkor/models/FollowedStories;)V

    goto :goto_0

    :cond_1
    const-string p1, "FullSyncYesFollowApiFail"

    .line 118
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->requestSyncAndFinish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onNewCustomerStatusDownloadFinished(Z)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/amazon/falkor/FalkorFullSyncManager;->checkRequirements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNewCustomerStatusDownloadFinished but conditions failed. aborting."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->newCustomerDownloadManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getData()Ljava/lang/Boolean;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->processNewCustomerData(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-string p1, "FullSyncYesCustApiFail"

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorFullSyncManager;->requestSyncAndFinish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final requestSyncIfNeeded()V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/amazon/falkor/FalkorFullSyncManager;->checkRequirements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    const-string v2, "full sync conditions failed. aborting."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->newCustomerDownloadManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->newCustomerDownloadManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getData()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/falkor/FalkorFullSyncManager;->processNewCustomerData(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->newCustomerDownloadManager:Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

    new-instance v1, Lcom/amazon/kindle/krx/content/BaseBook;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorFullSyncManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "newCustomerDownloadManager download initiated"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
