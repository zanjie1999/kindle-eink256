.class public Lcom/amazon/kcp/reader/StandAloneMopReaderActivity;
.super Lcom/amazon/kcp/reader/MopReaderActivity;
.source "StandAloneMopReaderActivity.java"


# static fields
.field private static final MOP_METRICS_TAG:Ljava/lang/String; = "MOPMetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kcp/reader/StandAloneMopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/StandAloneMopReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/MopReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/StandAloneMopReaderActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public recordSettings()V
    .locals 2

    .line 29
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->recordChangeInSettings(Ljava/lang/String;Z)V

    return-void
.end method
