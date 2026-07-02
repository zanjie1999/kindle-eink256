.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;
.super Ljava/lang/Object;
.source "WikipediaInfoCardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->onRequestComplete()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_error:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->showErrorMessage(I)V

    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$1;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->error_message_connection:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->showErrorMessage(I)V

    :goto_1
    return-void
.end method
