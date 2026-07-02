.class Lcom/amazon/sitb/android/ReaderActions$1;
.super Landroid/os/AsyncTask;
.source "ReaderActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/ReaderActions;->checkAndDeleteSamplesAsync(Lcom/amazon/sitb/android/EntryPoint;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/ReaderActions;

.field final synthetic val$entryPoint:Lcom/amazon/sitb/android/EntryPoint;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/EntryPoint;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/sitb/android/ReaderActions$1;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    iput-object p2, p0, Lcom/amazon/sitb/android/ReaderActions$1;->val$entryPoint:Lcom/amazon/sitb/android/EntryPoint;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 138
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/ReaderActions$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12

    .line 142
    new-instance v11, Lcom/amazon/sitb/android/ReaderActions$1$1;

    .line 143
    const-class v3, Lcom/amazon/sitb/android/ReaderActions$1;

    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions$1;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    .line 144
    invoke-static {v0}, Lcom/amazon/sitb/android/ReaderActions;->access$000(Lcom/amazon/sitb/android/ReaderActions;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v4

    sget-object v5, Lcom/amazon/sitb/android/Metric;->SAMPLE_MIGRATE_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v6, Lcom/amazon/sitb/android/Metric;->SAMPLE_MIGRATE_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->SAMPLE_MIGRATE_SUCCESS:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->SAMPLE_MIGRATE_FAILURE:Lcom/amazon/sitb/android/Metric;

    const-string v2, "Delete sample"

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/amazon/sitb/android/ReaderActions$1$1;-><init>(Lcom/amazon/sitb/android/ReaderActions$1;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;[Ljava/lang/String;)V

    .line 164
    invoke-virtual {v11}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->execute()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
