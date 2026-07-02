.class public abstract Lcom/amazon/kcp/font/FontConfigInitializer;
.super Ljava/lang/Object;
.source "FontConfigInitializer.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected isFontConfigInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/amazon/kcp/font/FontConfigInitializer;->isFontConfigInitialized:Z

    return-void
.end method


# virtual methods
.method public abstract initializeFonts()V
.end method

.method public abstract onBookOpen(Ljava/lang/String;)V
.end method

.method public onFontDelete()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->updateFontConfigCache()Z

    return-void
.end method

.method public onFontDownload()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->updateFontConfigCache()Z

    return-void
.end method

.method public abstract unpackBundledFonts()V
.end method

.method public validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z
    .locals 0

    .line 56
    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/amazon/krf/platform/KRF;->isValidFontFace(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
