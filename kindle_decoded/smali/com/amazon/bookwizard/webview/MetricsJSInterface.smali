.class public Lcom/amazon/bookwizard/webview/MetricsJSInterface;
.super Ljava/lang/Object;
.source "MetricsJSInterface.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/webview/MetricsJSInterface;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/amazon/bookwizard/webview/MetricsJSInterface;->GSON:Lcom/google/gson/Gson;

    new-instance v1, Lcom/amazon/bookwizard/webview/MetricsJSInterface$1;

    invoke-direct {v1}, Lcom/amazon/bookwizard/webview/MetricsJSInterface$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 60
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static flush()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 76
    invoke-static {}, Lcom/amazon/bookwizard/util/M;->flush()V

    return-void
.end method

.method public static hide(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/amazon/bookwizard/util/M;->hide(Ljava/lang/String;)V

    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method

.method public static timer(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
