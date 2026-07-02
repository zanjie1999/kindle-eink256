.class public Lcom/amazon/android/webkit/AmazonWebKitFactories;
.super Ljava/lang/Object;
.source "AmazonWebKitFactories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;
    }
.end annotation


# static fields
.field public static final ANDROID_FACTORY:Ljava/lang/String; = "com.amazon.android.webkit.android.AndroidWebKitFactory"

.field public static final EMBEDDED_FACTORY:Ljava/lang/String; = "com.amazon.android.webkit.embedded.EmbeddedWebKitFactory"

.field private static final TAG:Ljava/lang/String; = "com.amazon.android.webkit.AmazonWebKitFactories"

.field private static defaultFactory:Ljava/lang/String; = null

.field private static factoryCreated:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/android/webkit/AmazonWebKitFactories;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/android/webkit/AmazonWebKitFactories;->defaultFactory:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;
    .locals 1

    const/4 v0, 0x1

    .line 131
    sput-boolean v0, Lcom/amazon/android/webkit/AmazonWebKitFactories;->factoryCreated:Z

    .line 132
    sget-object v0, Lcom/amazon/android/webkit/AmazonWebKitFactories$Implementation;->FACTORY:Lcom/amazon/android/webkit/AmazonWebKitFactory;

    return-object v0
.end method

.method public static setDefaultFactory(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 120
    sget-boolean v0, Lcom/amazon/android/webkit/AmazonWebKitFactories;->factoryCreated:Z

    if-nez v0, :cond_0

    .line 123
    sput-object p0, Lcom/amazon/android/webkit/AmazonWebKitFactories;->defaultFactory:Ljava/lang/String;

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultFactory() must be call before first call of getDefaultFactory()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
