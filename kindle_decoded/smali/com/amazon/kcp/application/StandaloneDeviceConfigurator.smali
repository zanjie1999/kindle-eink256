.class public Lcom/amazon/kcp/application/StandaloneDeviceConfigurator;
.super Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;
.source "StandaloneDeviceConfigurator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 16
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/DefaultAndroidDeviceConfigurator;->isSimplifiedReaderRequired(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/amazon/kcp/reader/SimplifiedStandAloneBookReaderActivity;

    goto :goto_0

    :cond_0
    const-class p1, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    :goto_0
    return-object p1
.end method
