.class public final Lcom/amazon/kcp/store/KCPJSBridge;
.super Ljava/lang/Object;
.source "KCPJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/KCPJSBridge$ArgType;,
        Lcom/amazon/kcp/store/KCPJSBridge$Builder;
    }
.end annotation


# static fields
.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final ARGS_TYPE:Ljava/lang/String; = "argsType"

.field private static final METHOD_NAME:Ljava/lang/String; = "methodName"


# instance fields
.field private final exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/store/KCPJSBridge;->tag:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/amazon/kcp/store/KCPJSBridge;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;Lcom/amazon/kcp/store/KCPJSBridge$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/store/KCPJSBridge;-><init>(Ljava/lang/String;Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;)V

    return-void
.end method

.method private handleJavascriptCallInternally(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ""

    .line 168
    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodName"

    .line 173
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "args"

    .line 174
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "argsType"

    .line 175
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 177
    sget-object v1, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->NULL:Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p3, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    .line 179
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "[,\\s]+"

    .line 186
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 187
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    array-length v3, p3

    if-ne v1, v3, :cond_2

    .line 192
    invoke-static {p3}, Lcom/amazon/kcp/store/KCPJSBridge;->parseToClass([Ljava/lang/String;)[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    move-result-object p3

    .line 193
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/Class;

    .line 194
    array-length v3, p3

    new-array v3, v3, [Ljava/lang/Object;

    .line 195
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_1

    .line 196
    aget-object v4, p3, v2

    .line 197
    invoke-virtual {v4}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->toJavaType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v1, v2

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->toJavaObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Arguments: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Types: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseToClass([Ljava/lang/String;)[Lcom/amazon/kcp/store/KCPJSBridge$ArgType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 208
    array-length v0, p0

    new-array v1, v0, [Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 210
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/amazon/kcp/store/KCPJSBridge$ArgType;->fromValue(Ljava/lang/String;)Lcom/amazon/kcp/store/KCPJSBridge$ArgType;

    move-result-object v3

    .line 211
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public handleJavascriptCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 150
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/store/KCPJSBridge;->handleJavascriptCallInternally(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 158
    iget-object p2, p0, Lcom/amazon/kcp/store/KCPJSBridge;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    iget-object p3, p0, Lcom/amazon/kcp/store/KCPJSBridge;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, p4, p3}, Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;->handleIllegalAccessException(Ljava/lang/Exception;Landroid/webkit/JsPromptResult;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 156
    iget-object p2, p0, Lcom/amazon/kcp/store/KCPJSBridge;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    iget-object p3, p0, Lcom/amazon/kcp/store/KCPJSBridge;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, p4, p3}, Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;->handleInvocationTargetException(Ljava/lang/Exception;Landroid/webkit/JsPromptResult;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 154
    iget-object p2, p0, Lcom/amazon/kcp/store/KCPJSBridge;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    iget-object p3, p0, Lcom/amazon/kcp/store/KCPJSBridge;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, p4, p3}, Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;->handleNoSuchMethodException(Ljava/lang/Exception;Landroid/webkit/JsPromptResult;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 152
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/store/KCPJSBridge;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    iget-object p3, p0, Lcom/amazon/kcp/store/KCPJSBridge;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, p4, p3}, Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;->handleInvalidArgumentException(Ljava/lang/Exception;Landroid/webkit/JsPromptResult;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
