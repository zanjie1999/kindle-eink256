.class Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;
.super Ljava/lang/Object;
.source "SearchBarSuggestionJSONHandler.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# static fields
.field private static final REF_TAG:Ljava/lang/String; = "refTag"

.field private static final SUGGESTIONS_KEY:Ljava/lang/String; = "suggestions"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.search.SearchBarSuggestionJSONHandler"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private query:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->query:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->url:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private publishCompleteEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->url:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public handleJSONObject(Lorg/json/JSONObject;)V
    .locals 6

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->publishCompleteEvent(Ljava/util/List;)V

    return-void

    :cond_0
    :try_start_0
    const-string v1, "suggestions"

    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    new-instance v2, Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "refTag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->TAG:Ljava/lang/String;

    const-string v2, "Error when parsing JSON"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;->publishCompleteEvent(Ljava/util/List;)V

    return-void
.end method
