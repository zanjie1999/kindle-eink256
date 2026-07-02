.class Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;
.super Ljava/lang/Object;
.source "WordWisePlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getActionButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;->this$0:Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;->this$0:Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->access$000(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)Lcom/amazon/kcp/reader/ui/WordWiseButton;

    move-result-object p1

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;->this$0:Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;

    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseButton;

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-static {p1, v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->access$002(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;Lcom/amazon/kcp/reader/ui/WordWiseButton;)Lcom/amazon/kcp/reader/ui/WordWiseButton;

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;->this$0:Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->access$000(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)Lcom/amazon/kcp/reader/ui/WordWiseButton;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
