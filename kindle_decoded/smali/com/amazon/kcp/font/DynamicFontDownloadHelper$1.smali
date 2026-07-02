.class final Lcom/amazon/kcp/font/DynamicFontDownloadHelper$1;
.super Ljava/util/HashMap;
.source "DynamicFontDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/DynamicFontDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mobipocket/android/drawing/FontFamily;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 75
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "STHeitiMedium.ttf"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "STBShusongRegular.ttf"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->KAI:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "STKaiTi.ttf"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->YUAN:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "STYuanMedium.ttf"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
