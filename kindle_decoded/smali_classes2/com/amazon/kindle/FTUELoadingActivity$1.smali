.class Lcom/amazon/kindle/FTUELoadingActivity$1;
.super Landroid/os/AsyncTask;
.source "FTUELoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/FTUELoadingActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/FTUELoadingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/FTUELoadingActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/FTUELoadingActivity$1;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/FTUELoadingActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/FTUELoadingActivity$1;->this$0:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-static {p1}, Lcom/amazon/kindle/FTUELoadingActivity;->access$000(Lcom/amazon/kindle/FTUELoadingActivity;)V

    const/4 p1, 0x0

    return-object p1
.end method
