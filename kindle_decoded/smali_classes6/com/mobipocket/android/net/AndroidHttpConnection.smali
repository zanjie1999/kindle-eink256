.class public Lcom/mobipocket/android/net/AndroidHttpConnection;
.super Ljava/lang/Object;
.source "AndroidHttpConnection.java"

# interfaces
.implements Lcom/amazon/system/net/HttpConnection;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connected:Z

.field private httpConnection:Ljava/net/HttpURLConnection;

.field private final localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

.field private final maxResponseSize:I

.field private primedUrl:Ljava/lang/String;

.field private timeout:I

.field private wifiLock:Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/mobipocket/android/net/AndroidHttpConnection;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/android/net/AndroidHttpConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/amazon/kindle/services/locale/ILocaleManager;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    .line 50
    iput p1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->maxResponseSize:I

    .line 51
    iput-object p2, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    return-void
.end method
