.class public final Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;
.super Ljava/lang/Object;
.source "WebViewCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/webview/WebViewCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

.field private static final INSTANCE:Lcom/amazon/falkor/webview/WebViewCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-direct {v0}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;-><init>()V

    sput-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->$$INSTANCE:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    .line 14
    new-instance v0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;

    invoke-direct {v0}, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;-><init>()V

    sput-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->INSTANCE:Lcom/amazon/falkor/webview/WebViewCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->INSTANCE:Lcom/amazon/falkor/webview/WebViewCacheManager;

    return-object v0
.end method
