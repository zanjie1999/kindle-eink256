.class public Lcom/amazon/xray/model/loader/FeedbackErrorsTask;
.super Lcom/amazon/xray/model/loader/ContentLoader$Task;
.source "FeedbackErrorsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
        "Ljava/util/List<",
        "Lcom/amazon/xray/model/FeedbackErrorType;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/xray/model/loader/FeedbackErrorsTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/FeedbackErrorsTask;->doInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/xray/model/loader/FeedbackErrorsTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getFeedbackErrorsFromDB()Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
