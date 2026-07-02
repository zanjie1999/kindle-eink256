.class public Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;
.super Ljava/lang/Object;
.source "DefaultAndroidDeviceConfigurator.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 41
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 42
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/ActivityFactory;

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v2, p1, p2, p3}, Lcom/amazon/kcp/application/ActivityFactory;->getReddingActivity(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;->getDefaultActivityClass(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected getDefaultActivityClass(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;->isSimplifiedReaderRequired(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/amazon/kcp/reader/SimplifiedBookReaderActivity;

    goto :goto_0

    :cond_0
    const-class p1, Lcom/amazon/kcp/reader/BookReaderActivity;

    :goto_0
    return-object p1
.end method

.method public getDocOpenIntent(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;Ljava/util/List;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/ActivityFactory;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;->getActivityClass(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;Ljava/util/List;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 79
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 80
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p2, "ClearTopActivity"

    .line 82
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 88
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const/high16 p1, 0x4000000

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method isSimplifiedReaderRequired(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 1

    .line 68
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    .line 70
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
