.class public final Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "RemoveDownloadEpisodesBookActionsFactory.kt"


# instance fields
.field private final groupId:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static final synthetic access$getGroupId$p(Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction$execute$1;

    invoke-direct {v1, p0}, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction$execute$1;-><init>(Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/falkor/R$string;->remove_downloaded_episodes_button_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
