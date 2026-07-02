.class Lcom/amazon/kcp/reader/ReaderActivity$24$1;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ReaderActivity$24;

.field final synthetic val$serverReadingPosition:Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity$24;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
    .locals 0

    .line 3893
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24$1;->this$1:Lcom/amazon/kcp/reader/ReaderActivity$24;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$24$1;->val$serverReadingPosition:Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3896
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$24$1;->this$1:Lcom/amazon/kcp/reader/ReaderActivity$24;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24$1;->val$serverReadingPosition:Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2200(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    return-void
.end method
