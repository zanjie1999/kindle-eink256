.class Lcom/amazon/kcp/font/StandaloneFontConfigInitializer$1;
.super Ljava/lang/Object;
.source "StandaloneFontConfigInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;->initializeFonts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/StandaloneFontConfigInitializer;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontsAndMoveIfNeeded()V

    return-void
.end method
