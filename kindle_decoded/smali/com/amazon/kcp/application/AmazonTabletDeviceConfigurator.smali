.class public Lcom/amazon/kcp/application/AmazonTabletDeviceConfigurator;
.super Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;
.source "AmazonTabletDeviceConfigurator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityClass(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;Ljava/util/List;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/ActivityFactory;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 31
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 32
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/ActivityFactory;

    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v2, p1, p2, p3}, Lcom/amazon/kcp/application/ActivityFactory;->getReddingActivity(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    .line 42
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;->isSimplifiedReaderRequired(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 43
    const-class v0, Lcom/amazon/kcp/reader/SimplifiedBookReaderActivity;

    goto :goto_1

    .line 44
    :cond_2
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    const-class v0, Lcom/amazon/kcp/reader/FullDefinitionActivity;

    goto :goto_1

    .line 47
    :cond_3
    const-class v0, Lcom/amazon/kcp/reader/BookReaderActivity;

    :cond_4
    :goto_1
    return-object v0
.end method
