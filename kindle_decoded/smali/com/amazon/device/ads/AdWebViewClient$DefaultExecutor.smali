.class Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;
.super Ljava/lang/Object;
.source "AdWebViewClient.java"

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultExecutor"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Z
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/amazon/device/ads/WebUtils;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    const/4 p1, 0x1

    return p1
.end method
