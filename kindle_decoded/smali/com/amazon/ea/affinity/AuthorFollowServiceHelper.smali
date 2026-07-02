.class public Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;
.super Ljava/lang/Object;
.source "AuthorFollowServiceHelper.java"


# static fields
.field private static final FOLLOW_SERVICE_FOLLOW_ENDPOINT:Ljava/lang/String; = "/followv2/follow/"

.field private static final FOLLOW_SERVICE_GET_ENDPOINT:Ljava/lang/String; = "/followv2/follow/%s_author/?ref=%s&include[]=seenTooltip"

.field private static final FOLLOW_SERVICE_UNFOLLOW_ENDPOINT:Ljava/lang/String; = "/followv2/follow/%s_author/?authenticity_token=%s&ref=%s"

.field private static final REF_TAG_FOLLOW:Ljava/lang/String; = "_aff"

.field private static final REF_TAG_LOOKUP:Ljava/lang/String; = "_afg"

.field private static final REF_TAG_UNFOLLOW:Ljava/lang/String; = "_afu"

.field private static final TAG_CSRF_TOKEN:Ljava/lang/String; = "csrf"

.field private static final TAG_FOLLOWING_STATE:Ljava/lang/String; = "isFollowing"

.field private static final TAG_PARAM_AUTHENTICITY_TOKEN:Ljava/lang/String; = "authenticity_token"

.field private static final TAG_PARAM_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_PARAM_ENTITY_ID:Ljava/lang/String; = "entity_id"

.field private static final TAG_PARAM_REF:Ljava/lang/String; = "ref"

.field private static final TAG_SEEN_TOOLTIP:Ljava/lang/String; = "seenTooltip"

.field private static final VALUE_PARAM_CATEGORY_AUTHOR:Ljava/lang/String; = "author"

.field private static cachedAuthorFollows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cacheFollowStatus(Ljava/lang/String;Z)V
    .locals 2

    const-class v0, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;

    monitor-enter v0

    .line 244
    :try_start_0
    sget-object v1, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static follow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;
        }
    .end annotation

    .line 93
    invoke-static {p0, p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCsrfTokenOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "authenticity_token"

    .line 97
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "entity_id"

    .line 98
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "category"

    const-string v2, "author"

    .line 99
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ref"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_aff"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string p1, "/followv2/follow/"

    const/4 v0, 0x0

    .line 107
    invoke-static {p1, v0, v1}, Lcom/amazon/ea/util/AjaxMessagingManager;->postWithJson(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "entity_id"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    const-class p1, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;

    monitor-enter p1
    :try_end_1
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :try_start_2
    sget-object v0, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-static {v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->setHideFollowHint(Z)V
    :try_end_3
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    return v1

    :catchall_0
    move-exception p0

    .line 112
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 129
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author subscription service contained invalid parameters"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 126
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author follow service could not be sent"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 123
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Invalid response returned from the author follow service"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 102
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author subscription service contained invalid parameters"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static declared-synchronized getCachedFollowStatus(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCsrfTokenOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;
        }
    .end annotation

    :try_start_0
    const-string v0, "/followv2/follow/%s_author/?ref=%s&include[]=seenTooltip"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_afg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/ea/util/AjaxMessagingManager;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "csrf"

    .line 193
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    invoke-direct {p0}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>()V

    throw p0

    .line 191
    :cond_1
    new-instance p0, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    invoke-direct {p0}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>()V

    throw p0
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 201
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author subscription service returned an invalid response"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 199
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author follow service could not be sent"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getFollowStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;
        }
    .end annotation

    :try_start_0
    const-string v0, "/followv2/follow/%s_author/?ref=%s&include[]=seenTooltip"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_afg"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/util/AjaxMessagingManager;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "seenTooltip"

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->setHideFollowHint(Z)V

    .line 70
    invoke-static {p0, p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getStatusFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author subscription service returned an invalid response"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 73
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author follow service could not be sent"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getHideFollowHint()Z
    .locals 2

    const-string/jumbo v0, "startactions.config"

    const-string v1, "hide_follow_hint"

    .line 275
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getStatusFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "isFollowing"

    .line 215
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 217
    const-class v0, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getStoredFollowStatus(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string/jumbo v0, "startactions.affinity.follow"

    .line 255
    invoke-static {v0, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static setHideFollowHint(Z)V
    .locals 2

    const-string/jumbo v0, "startactions.config"

    const-string v1, "hide_follow_hint"

    .line 287
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static storeFollowStatus(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "startactions.affinity.follow"

    .line 268
    invoke-static {v0, p0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static unfollow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCsrfTokenOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 150
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/followv2/follow/%s_author/?authenticity_token=%s&ref=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v0, 0x2

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_afu"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/util/AjaxMessagingManager;->delete(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "entity_id"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    const-class p1, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;

    monitor-enter p1
    :try_end_0
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :try_start_1
    sget-object v0, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cachedAuthorFollows:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit p1

    return v4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/amazon/ea/messaging/AjaxMessageFailureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v3

    :catch_0
    move-exception p0

    .line 171
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author subscription service could not be created"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 168
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Call to the author follow service could not be sent"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 165
    new-instance p1, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;

    const-string v0, "Invalid response returned from the author follow service"

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
