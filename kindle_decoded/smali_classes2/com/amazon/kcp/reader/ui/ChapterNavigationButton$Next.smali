.class public Lcom/amazon/kcp/reader/ui/ChapterNavigationButton$Next;
.super Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;
.source "ChapterNavigationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Next"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBlackResource()I
    .locals 1

    .line 85
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->tts_btn_next_chapter_black:I

    return v0
.end method

.method public getSepiaResource()I
    .locals 1

    .line 75
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->tts_btn_next_chapter_sepia:I

    return v0
.end method

.method public getWhiteResource()I
    .locals 1

    .line 80
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->tts_btn_next_chapter_white:I

    return v0
.end method
