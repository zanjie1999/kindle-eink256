.class public Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;
.super Ljava/lang/Object;
.source "KuUpsellBannerDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRIORITY:I = 0x60

.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.ui.KuUpsellBannerDecorationProvider"


# instance fields
.field private final kuBannerInfoManager:Lcom/amazon/ku/KuBannerInfoManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "KuConversionPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 47
    invoke-static {}, Lcom/amazon/ku/KuBannerInfoManager;->getInstance()Lcom/amazon/ku/KuBannerInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->kuBannerInfoManager:Lcom/amazon/ku/KuBannerInfoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private shouldShow(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ku/data/KuBannerInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 82
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KindleUnlimited"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "NeverShowBanner"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    sget-object p1, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->TAG:Ljava/lang/String;

    const-string p2, "Not showing: already converted"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    sget-object p1, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->TAG:Ljava/lang/String;

    const-string p2, "Not showing: book purchase is blocked"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    if-nez p2, :cond_3

    .line 98
    sget-object p1, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->TAG:Ljava/lang/String;

    const-string p2, "Not showing: No KuBannerInfo"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->kuBannerInfoManager:Lcom/amazon/ku/KuBannerInfoManager;

    invoke-virtual {p1}, Lcom/amazon/ku/KuBannerInfoManager;->retrieveBannerInfo()V

    return v0

    .line 104
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/ku/data/KuBannerInfo;->getBannerShownStatus()Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    move-result-object p1

    sget-object v1, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->YES:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    if-eq p1, v1, :cond_4

    .line 105
    sget-object p1, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->TAG:Ljava/lang/String;

    const-string p2, "Not showing: KuBannerInfo says no"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 109
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/ku/data/KuBannerInfo;->isValid()Z

    move-result p1

    if-nez p1, :cond_5

    .line 110
    sget-object p1, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not showing: invalid KuBannerInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/ku/data/KuBannerInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v0
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->kuBannerInfoManager:Lcom/amazon/ku/KuBannerInfoManager;

    invoke-virtual {v0}, Lcom/amazon/ku/KuBannerInfoManager;->getKuBannerInfo()Lcom/amazon/ku/data/KuBannerInfo;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->shouldShow(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ku/data/KuBannerInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;

    invoke-direct {p1, p0, v0}, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;-><init>(Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;Lcom/amazon/ku/data/KuBannerInfo;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x60

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
