.class Lcom/amazon/kcp/translation/service/TranslationRequest$1;
.super Ljava/util/HashMap;
.source "TranslationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/translation/service/TranslationRequest;->toParameterMap()Ljava/util/Map;
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
.field final synthetic this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/translation/service/TranslationRequest;)V
    .locals 1

    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$000(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$000(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->isDetecting()Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$000(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sourceLanguageTag"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$100(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/Language;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "destinationLanguageTag"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$200(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/translation/Languages;->convertToBCP47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceLanguageTag"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$300(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$400(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentGuid"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$500(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "asin"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$600(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "beginPosition"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$700(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "endPosition"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$1;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$800(Lcom/amazon/kcp/translation/service/TranslationRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentLanguageTag"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
