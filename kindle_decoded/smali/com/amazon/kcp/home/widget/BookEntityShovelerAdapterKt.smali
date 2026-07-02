.class public final Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapterKt;
.super Ljava/lang/Object;
.source "BookEntityShovelerAdapter.kt"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.home.widget.BookEntityShovelerAdapter"


# direct methods
.method public static final synthetic access$getImageUrlForTheme(Lcom/amazon/kindle/home/model/BookEntity;Lcom/amazon/kindle/krx/theme/Theme;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapterKt;->getImageUrlForTheme(Lcom/amazon/kindle/home/model/BookEntity;Lcom/amazon/kindle/krx/theme/Theme;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getImageUrlForTheme(Lcom/amazon/kindle/home/model/BookEntity;Lcom/amazon/kindle/krx/theme/Theme;)Ljava/lang/String;
    .locals 1

    .line 255
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/amazon/kindle/home/model/BookEntity;->getDarkCoverUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/home/model/BookEntity;->getLightCoverUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
