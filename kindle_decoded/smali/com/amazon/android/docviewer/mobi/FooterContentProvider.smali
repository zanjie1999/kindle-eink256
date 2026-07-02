.class public Lcom/amazon/android/docviewer/mobi/FooterContentProvider;
.super Ljava/lang/Object;
.source "FooterContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FooterContentProvider"


# instance fields
.field private lastLabel:Ljava/lang/String;

.field private mcpContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/yj/IMarginalContentProviderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->mcpContextRef:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->lastLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFooterString(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;I)Ljava/lang/String;
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->mcpContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    const-string v1, "FooterContentProvider"

    const-string v2, ""

    if-nez v0, :cond_0

    const-string p1, "MarginalContentProvider not initialized yet"

    .line 95
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 99
    :try_start_0
    sget-object v4, Lcom/amazon/android/docviewer/mobi/FooterContentProvider$1;->$SwitchMap$com$amazon$android$docviewer$mobi$FooterContentType$Types:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 123
    :pswitch_0
    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->lastLabel:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 127
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastBodyPageLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->lastLabel:Ljava/lang/String;

    .line 130
    :cond_1
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->lastLabel:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 131
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 132
    sget p2, Lcom/amazon/kindle/krl/R$string;->page_footer:I

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->lastLabel:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_1
    invoke-interface {v0, p2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->userLocationFromPosition(I)I

    move-result p1

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 115
    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookEndPosition()I

    move-result v2

    .line 116
    invoke-interface {v0, v2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->userLocationFromPosition(I)I

    move-result v0

    .line 117
    sget v2, Lcom/amazon/kindle/krl/R$string;->page_footer_location_with_end_location:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    return-object v2

    .line 106
    :pswitch_3
    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    invoke-interface {p1}, Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;->getTimeRemainingStringForBook()Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3

    .line 102
    :pswitch_4
    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;->getTimeRemainingStringForChapter()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v3

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caught exception getting KRIF footer text "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReadingProgress()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->mcpContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FooterContentProvider"

    const-string v2, "MarginalContentProvider not initialized yet"

    .line 70
    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 73
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReadingProgressString()Ljava/lang/String;
    .locals 5

    .line 55
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    sget v1, Lcom/amazon/kindle/krl/R$string;->page_footer_percentage:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->getReadingProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMarginalContentProviderContext(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->mcpContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
