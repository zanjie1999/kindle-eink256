.class Lcom/amazon/nwstd/service/NwstdJobService$Task;
.super Landroid/os/AsyncTask;
.source "NwstdJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/service/NwstdJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
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
.field final synthetic this$0:Lcom/amazon/nwstd/service/NwstdJobService;


# direct methods
.method private constructor <init>(Lcom/amazon/nwstd/service/NwstdJobService;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/nwstd/service/NwstdJobService$Task;->this$0:Lcom/amazon/nwstd/service/NwstdJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/nwstd/service/NwstdJobService;Lcom/amazon/nwstd/service/NwstdJobService$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/service/NwstdJobService$Task;-><init>(Lcom/amazon/nwstd/service/NwstdJobService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/service/NwstdJobService$Task;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .line 46
    invoke-static {}, Lcom/amazon/nwstd/service/NwstdJobService;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/amazon/nwstd/service/NwstdJobService$Task;->this$0:Lcom/amazon/nwstd/service/NwstdJobService;

    invoke-static {p1}, Lcom/amazon/nwstd/service/NwstdJobService;->access$200(Lcom/amazon/nwstd/service/NwstdJobService;)V

    const/4 p1, 0x0

    return-object p1
.end method
