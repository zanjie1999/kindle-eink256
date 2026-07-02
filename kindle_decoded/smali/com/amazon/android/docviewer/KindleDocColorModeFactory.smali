.class public Lcom/amazon/android/docviewer/KindleDocColorModeFactory;
.super Ljava/lang/Object;
.source "KindleDocColorModeFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blackColorMode:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode;",
            ">;"
        }
    .end annotation
.end field

.field private greenColorMode:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode;",
            ">;"
        }
    .end annotation
.end field

.field private sepiaColorMode:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode;",
            ">;"
        }
    .end annotation
.end field

.field private whiteColorMode:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBlackSecondaryTextColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 402
    sget v0, Lcom/amazon/kindle/krl/R$color;->black_mode_text_secondary_V2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getGreenSecondaryTextColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 398
    sget v0, Lcom/amazon/kindle/krl/R$color;->green_mode_text_secondary_V2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getSepiaBackgroundColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 386
    sget v0, Lcom/amazon/kindle/krl/R$color;->sepia_mode_background_V2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getSepiaSecondaryTextColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 394
    sget v0, Lcom/amazon/kindle/krl/R$color;->sepia_mode_text_secondary_V2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getSepiaTextColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 390
    sget v0, Lcom/amazon/kindle/krl/R$color;->sepia_mode_text_V2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
    .locals 3

    .line 332
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getBuilder()Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 333
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->ui_text_color_black:I

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_search_border:I

    .line 337
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_search_highlight:I

    .line 338
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_search_underline:I

    .line 339
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_link:I

    .line 340
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_note:I

    .line 341
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_icon:I

    .line 342
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_selected_icon:I

    .line 343
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_black:I

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_locked_black:I

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_unlocked_black:I

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->definition_container_background_black:I

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    const p1, 0x108009b

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_ArticleListStyle:I

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_gutter_black:I

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->button_dark:I

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_dark:I

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    return-object v0
.end method

.method protected createBaseLightColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
    .locals 3

    .line 356
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getBuilder()Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 357
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight:I

    .line 360
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight_blue:I

    .line 361
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight_orange:I

    .line 362
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight_pink:I

    .line 363
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_search_border:I

    .line 365
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_search_highlight:I

    .line 366
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_opaque_search_highlight:I

    .line 367
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_search_underline:I

    .line 368
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_link:I

    .line 369
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_note:I

    .line 370
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_icon:I

    .line 371
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_selected_icon:I

    .line 372
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_default:I

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_locked_default:I

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_unlocked_default:I

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->definition_container_background_white:I

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_dialog_info_light:I

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_ArticleListStyle_Light:I

    .line 379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_gutter_white:I

    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    return-object v0
.end method

.method protected createBlackColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 259
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x0

    .line 260
    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_text:I

    .line 261
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 262
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getBlackSecondaryTextColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->ui_text_color_black:I

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_background:I

    .line 264
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight:I

    .line 266
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight_blue:I

    .line 267
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight_orange:I

    .line 268
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight_pink:I

    .line 269
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->black_mode_search_border:I

    .line 271
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 272
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    return-object p1
.end method

.method protected createGreenColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 305
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseLightColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_text:I

    .line 307
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 308
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getGreenSecondaryTextColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_background:I

    .line 310
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_highlight:I

    .line 312
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_highlight_blue:I

    .line 313
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_highlight_orange:I

    .line 314
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_highlight_pink:I

    .line 315
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_search_highlight:I

    .line 317
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_search_border:I

    .line 318
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_search_underline:I

    .line 319
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_link:I

    .line 320
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_note:I

    .line 321
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_icon:I

    .line 322
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->green_mode_selected_icon:I

    .line 323
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_green:I

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->definition_container_background_green:I

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_gutter_green:I

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 328
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    return-object p1
.end method

.method protected createSepiaColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 276
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseLightColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 278
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getSepiaTextColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 279
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getSepiaSecondaryTextColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->ui_text_color_sepia:I

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 281
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getSepiaBackgroundColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight:I

    .line 283
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight_blue:I

    .line 284
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight_orange:I

    .line 285
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_highlight_pink:I

    .line 286
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_search_highlight:I

    .line 288
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_search_border:I

    .line 289
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_search_underline:I

    .line 290
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_link:I

    .line 291
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_note:I

    .line 292
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_icon:I

    .line 293
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->sepia_mode_selected_icon:I

    .line 294
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_sepia:I

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_locked_sepia:I

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_unlocked_sepia:I

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->definition_container_background_sepia:I

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget p1, Lcom/amazon/kindle/krl/R$drawable;->page_gutter_sepia:I

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 301
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    return-object p1
.end method

.method protected createWhiteColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 250
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseLightColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_text:I

    .line 252
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_text_secondary:I

    .line 253
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    sget v1, Lcom/amazon/kindle/krl/R$color;->white_mode_background:I

    .line 254
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    .line 255
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    return-object p1
.end method

.method public getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 33
    sget-object v3, Lcom/amazon/android/docviewer/KindleDocColorModeFactory$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v5, 0x108009b

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v9, -0x1000000

    .line 117
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x13

    const/16 v11, 0xd

    const/16 v14, 0x9

    const/4 v15, 0x3

    const/16 v4, 0x1e

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/16 v16, -0x1

    .line 98
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    packed-switch v3, :pswitch_data_0

    .line 35
    sget-object v3, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AndroidColorModeFactory#getColorMode: invalid colorModeId of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".  Defaulting to \"white\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {v3, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->night_mode_text:I

    .line 231
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->black_mode_text_secondary:I

    .line 232
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->ui_text_color_black:I

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->night_mode_background:I

    .line 234
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_night:I

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/4 v3, 0x5

    sget v4, Lcom/amazon/kindle/krl/R$color;->night_mode_highlight_yellow:I

    .line 237
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/4 v3, 0x6

    sget v4, Lcom/amazon/kindle/krl/R$color;->night_mode_highlight_blue:I

    .line 238
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/4 v3, 0x7

    sget v4, Lcom/amazon/kindle/krl/R$color;->night_mode_highlight_orange:I

    .line 239
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v3, 0x8

    sget v4, Lcom/amazon/kindle/krl/R$color;->night_mode_highlight_pink:I

    .line 240
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->black_mode_search_border:I

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 211
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, 0x12

    const-string/jumbo v3, "maryland"

    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v8, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/high16 v2, -0x80000000

    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/high16 v2, -0x340000

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, -0x3400

    .line 219
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v11, v9}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 194
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0x9efd

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0x7f0b80dc

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0xfcd485

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0xfab674

    .line 201
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, -0x6bac

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 173
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v2

    .line 174
    invoke-virtual {v2, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/high16 v2, -0x350000

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/high16 v2, -0x33560000    # -8.912896E7f

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0xffa4fa

    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, -0x33cd

    .line 180
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v11, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_default:I

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_locked_default:I

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_unlocked_default:I

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 158
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v3

    .line 159
    invoke-virtual {v3, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v3, -0x6700

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v3, -0x7f006700

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v6, v9}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->black_mode_highlight:I

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 143
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseLightColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/high16 v3, -0x10000

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/high16 v3, -0x7f010000

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v3, -0x493f

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->white_mode_highlight:I

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v11, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, 0x1b

    .line 152
    invoke-virtual {v1, v2, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$style;->Theme_ArticleListStyle:I

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 129
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseLightColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NEBRASKA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 130
    invoke-virtual {v1, v12, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0x44ecc2

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0xffff56

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v6, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0xff3400

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, 0x1b

    .line 138
    invoke-virtual {v1, v2, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$style;->Theme_ArticleListStyle:I

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 112
    :pswitch_7
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0xff0100

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0x7fff0100

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v6, v9}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v2, -0x777778

    .line 119
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 88
    :pswitch_8
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBaseDarkColorModeBuilder(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v12, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v3, -0xf1974

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v3, -0x386700

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->ui_text_color_white:I

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v3, -0xc6d8a5

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const v3, 0x7f555555

    .line 95
    invoke-virtual {v1, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$color;->white_mode_search_border:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v11, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v3, 0xe

    sget v5, Lcom/amazon/kindle/krl/R$color;->white_mode_note:I

    .line 99
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v3, 0xf

    sget v5, Lcom/amazon/kindle/krl/R$color;->white_mode_icon:I

    .line 100
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v3, 0x10

    sget v5, Lcom/amazon/kindle/krl/R$color;->white_mode_selected_icon:I

    .line 101
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->page_bookmark_default:I

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_locked_default:I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_unlocked_default:I

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    const/16 v2, 0x1a

    sget v3, Lcom/amazon/kindle/krl/R$drawable;->definition_container_background_white:I

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v4, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->button_light:I

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->build()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    return-object v1

    .line 75
    :pswitch_9
    iget-object v1, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->greenColorMode:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createGreenColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->greenColorMode:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createGreenColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->greenColorMode:Ljava/lang/ref/SoftReference;

    :cond_1
    :goto_0
    return-object v1

    .line 63
    :pswitch_a
    iget-object v1, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->sepiaColorMode:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createSepiaColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->sepiaColorMode:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-nez v1, :cond_3

    .line 69
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createSepiaColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->sepiaColorMode:Ljava/lang/ref/SoftReference;

    :cond_3
    :goto_1
    return-object v1

    .line 51
    :pswitch_b
    iget-object v1, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->blackColorMode:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_4

    .line 52
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBlackColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->blackColorMode:Ljava/lang/ref/SoftReference;

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-nez v1, :cond_5

    .line 57
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createBlackColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->blackColorMode:Ljava/lang/ref/SoftReference;

    :cond_5
    :goto_2
    return-object v1

    .line 39
    :goto_3
    :pswitch_c
    iget-object v1, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->whiteColorMode:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_6

    .line 40
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createWhiteColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->whiteColorMode:Ljava/lang/ref/SoftReference;

    goto :goto_4

    .line 43
    :cond_6
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-nez v1, :cond_7

    .line 45
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->createWhiteColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->whiteColorMode:Ljava/lang/ref/SoftReference;

    :cond_7
    :goto_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
