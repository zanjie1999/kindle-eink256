.class Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;
.super Landroid/os/AsyncTask;
.source "WebserviceCoverProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/WebserviceCoverProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImageFromWebTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/amazon/kindle/cover/ICoverBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/WebserviceCoverProvider;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/cover/WebserviceCoverProvider;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;->this$0:Lcom/amazon/kcp/cover/WebserviceCoverProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/cover/WebserviceCoverProvider;Lcom/amazon/kcp/cover/WebserviceCoverProvider$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;-><init>(Lcom/amazon/kcp/cover/WebserviceCoverProvider;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 3

    const/4 v0, 0x0

    .line 84
    aget-object v0, p1, v0

    check-cast v0, Lcom/amazon/kindle/model/content/IListableBook;

    const/4 v1, 0x1

    .line 85
    aget-object v1, p1, v1

    check-cast v1, Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v2, 0x2

    .line 86
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;->this$0:Lcom/amazon/kcp/cover/WebserviceCoverProvider;

    invoke-static {v2, v0, v1, p1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$000(Lcom/amazon/kcp/cover/WebserviceCoverProvider;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/WebserviceCoverProvider$GetImageFromWebTask;->doInBackground([Ljava/lang/Object;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1
.end method
