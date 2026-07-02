.class public Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider;
.super Ljava/lang/Object;
.source "KindleOneClickURLProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;
    }
.end annotation


# direct methods
.method public static getOneClickSettingsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 47
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "www.%s"

    .line 48
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dppui/pay-select"

    .line 49
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->CLIENT_ID:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 50
    invoke-virtual {v1}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->getParameter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "myx"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->PREFERENCE_TYPE:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 51
    invoke-virtual {v1}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->getParameter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amazon.co.jp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ebooks"

    goto :goto_0

    :cond_0
    const-string p1, "DefaultOneClick"

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->TRANSACTION_CONTEXT:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 52
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->getParameter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preference"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->DESTINATION_PATH:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 53
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->getParameter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/hz/mycd/myx#/home/settings/payment"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "title"

    .line 55
    invoke-virtual {p1, v0, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
