.class final Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction$execute$1;
.super Ljava/lang/Object;
.source "RemoveDownloadEpisodesBookActionsFactory.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction$execute$1;->this$0:Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction$execute$1;->this$0:Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;

    invoke-static {v0}, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->access$getSdk$p(Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction$execute$1;->this$0:Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;

    invoke-static {v1}, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;->access$getGroupId$p(Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItemLocally(Ljava/lang/String;)V

    return-void
.end method
