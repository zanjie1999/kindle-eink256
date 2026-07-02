.class Lcom/amazon/kcp/translation/service/SpeakRequest$1;
.super Ljava/util/HashMap;
.source "SpeakRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/translation/service/SpeakRequest;->toParameterMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/translation/service/SpeakRequest;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$000(Lcom/amazon/kcp/translation/service/SpeakRequest;)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "languageTag"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$100(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$200(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentGuid"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$300(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "asin"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$400(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "beginPosition"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$1;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$500(Lcom/amazon/kcp/translation/service/SpeakRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "endPosition"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
