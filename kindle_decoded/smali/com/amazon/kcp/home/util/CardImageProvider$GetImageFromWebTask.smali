.class Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;
.super Landroid/os/AsyncTask;
.source "CardImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/util/CardImageProvider;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/util/CardImageProvider;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/home/util/CardImageProvider;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/home/util/CardImageProvider;Lcom/amazon/kcp/home/util/CardImageProvider$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;-><init>(Lcom/amazon/kcp/home/util/CardImageProvider;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    .line 38
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 39
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 40
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-static {v2, v0, v1, p1}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$000(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
