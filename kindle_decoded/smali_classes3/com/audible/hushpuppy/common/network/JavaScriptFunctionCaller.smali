.class public Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;
.super Ljava/lang/Object;
.source "JavaScriptFunctionCaller.java"


# static fields
.field private static final FUNCTION_CALL_TEMPLATE:Ljava/lang/String; = "typeof window.%s === \'function\' && window.%s.apply(window, %s)"


# instance fields
.field private final webViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The webView param cannot be null"

    .line 49
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;->webViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static varargs serializeArguments([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 114
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 115
    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCallException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;->webViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    invoke-static {p2}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;->serializeArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "typeof window.%s === \'function\' && window.%s.apply(window, %s)"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance p2, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;-><init>(Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p2

    .line 83
    new-instance v0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCallException;

    const-string v1, "argument serialization failed"

    invoke-direct {v0, p1, v1, p2}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :cond_0
    new-instance p2, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCallException;

    const-string v0, "WebView is null"

    invoke-direct {p2, p1, v0}, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method
