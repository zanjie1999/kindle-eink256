.class Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->postDownloadOnAsyncTask(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;

.field final synthetic val$downloadAudio:Z

.field final synthetic val$downloadSync:Z

.field final synthetic val$relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->val$relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    iput-boolean p3, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->val$downloadAudio:Z

    iput-boolean p4, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->val$downloadSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->this$0:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->val$relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    iget-boolean v2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->val$downloadAudio:Z

    iget-boolean v3, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;->val$downloadSync:Z

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->access$000(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method
