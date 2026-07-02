.class public final enum Lcom/mobipocket/android/drawing/FontFamily;
.super Ljava/lang/Enum;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mobipocket/android/drawing/FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum BASKERVILLE:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum BOOKERLYDISPLAY:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum CAECILIA:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum CAECILIA_CONDENSED:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum DIWAN:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum DYSLEXIC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum EMBER:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum FUTURA:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum GEORGIA:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum HELVETICALIGHT:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum KAI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum LUCIDA:Lcom/mobipocket/android/drawing/FontFamily;

.field private static final MIGRATED_FONTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MONOSPACE:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum MURASU_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum NEW_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum NOTO_NASKH:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum NOTO_SANS_DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum NOTO_SANS_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum NOTO_SANS_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum NOTO_SANS_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum PALATINO:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum ROBOTO_BOLD:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum ROBOTO_ITALIC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum ROBOTO_LIGHT:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum ROBOTO_MEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum SAGUNA_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum SAKKAL:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum SANS:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum SERIF:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STKAITITC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STSONGTC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum STYUANTC:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TESTFONT1:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TESTFONT2:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TESTFONT3:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TESTFONT4:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum TSUKUMIN:Lcom/mobipocket/android/drawing/FontFamily;

.field public static final enum YUAN:Lcom/mobipocket/android/drawing/FontFamily;

.field private static defaultFont:Lcom/mobipocket/android/drawing/FontFamily;


# instance fields
.field private displayNameResId:I

.field private fileName:Ljava/lang/String;

.field private fileNameResId:I

.field private isCustomFont:Z

.field private isRenderingFont:Z

.field private languages:Lcom/mobipocket/android/drawing/LanguageSet;

.field private metricName:Ljava/lang/String;

.field private typeFaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 30
    new-instance v10, Lcom/mobipocket/android/drawing/FontFamily;

    sget v3, Lcom/amazon/kindle/krl/R$string;->font_filename_bookerly:I

    sget v5, Lcom/amazon/kindle/krl/R$string;->font_displayname_bookerly:I

    sget-object v7, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v1, "BOOKERLY"

    const/4 v2, 0x0

    const-string v4, "Bookerly"

    const/4 v6, 0x1

    const-string v8, "Bookerly"

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v10, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    .line 31
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_bookerlydisplay:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_bookerlydisplay:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "BOOKERLYDISPLAY"

    const/4 v13, 0x1

    const-string v15, "Bookerly Display"

    const/16 v17, 0x1

    const-string v19, "Bookerly Display"

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLYDISPLAY:Lcom/mobipocket/android/drawing/FontFamily;

    .line 32
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_monospace:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_monospace:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "MONOSPACE"

    const/4 v3, 0x2

    const-string v5, "monospace"

    const/4 v7, 0x0

    const-string v9, "Monospace"

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->MONOSPACE:Lcom/mobipocket/android/drawing/FontFamily;

    .line 33
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_sans:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_sans:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "SANS"

    const/4 v13, 0x3

    const-string v15, "sans-serif"

    const/16 v17, 0x0

    const-string v19, "Sans Serif"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->SANS:Lcom/mobipocket/android/drawing/FontFamily;

    .line 34
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_serif:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_serif:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "SERIF"

    const/4 v3, 0x4

    const-string v5, "serif"

    const-string v9, "Serif"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    .line 35
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_caecilia:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_caecilia:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "CAECILIA"

    const/4 v13, 0x5

    const-string v15, "Caecilia"

    const/16 v17, 0x1

    const-string v19, "Caecilia"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->CAECILIA:Lcom/mobipocket/android/drawing/FontFamily;

    .line 36
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_caecilia_condensed:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_caecilia_condensed:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "CAECILIA_CONDENSED"

    const/4 v3, 0x6

    const-string v5, "CaeciliaCondensed"

    const/4 v7, 0x1

    const-string v9, "CaeciliaCondensed"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->CAECILIA_CONDENSED:Lcom/mobipocket/android/drawing/FontFamily;

    .line 37
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_georgia:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_georgia:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "GEORGIA"

    const/4 v13, 0x7

    const-string v15, "Georgia"

    const-string v19, "Georgia"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->GEORGIA:Lcom/mobipocket/android/drawing/FontFamily;

    .line 38
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_palatino:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_palatino:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "PALATINO"

    const/16 v3, 0x8

    const-string v5, "Palatino"

    const-string v9, "Palatino"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PALATINO:Lcom/mobipocket/android/drawing/FontFamily;

    .line 39
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_baskerville:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_baskerville:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "BASKERVILLE"

    const/16 v13, 0x9

    const-string v15, "Baskerville"

    const-string v19, "Baskerville"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->BASKERVILLE:Lcom/mobipocket/android/drawing/FontFamily;

    .line 40
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_helvetica:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_helvetica:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "HELVETICA"

    const/16 v3, 0xa

    const-string v5, "Helvetica Neue"

    const-string v9, "Helvetica"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    .line 41
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_helveticalight:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_helveticalight:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "HELVETICALIGHT"

    const/16 v13, 0xb

    const-string v15, "Helvetica Neue Light"

    const-string v19, "Helvetica Light"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICALIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    .line 42
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_lucida:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_lucida:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "LUCIDA"

    const/16 v3, 0xc

    const-string v5, "Lucida Sans"

    const-string v9, "Lucida"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->LUCIDA:Lcom/mobipocket/android/drawing/FontFamily;

    .line 43
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_tbgothicmed:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_tbgothicmed:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "TBGOTHICMED"

    const/16 v13, 0xd

    const-string v15, "TBGothic"

    const-string v19, "TBGothic"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

    .line 44
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_tbminchomedium:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_tbminchomedium:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "TBMINCHOMEDIUM"

    const/16 v3, 0xe

    const-string v5, "TBMincho"

    const-string v9, "TBMincho"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    .line 45
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_tsukumin:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_tsukumin:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "TSUKUMIN"

    const/16 v13, 0xf

    const-string v15, "TsukushiMincho"

    const-string v19, "TsukushiMincho"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TSUKUMIN:Lcom/mobipocket/android/drawing/FontFamily;

    .line 46
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_droid_sans:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_stsystemsc:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "STSYSTEMSC"

    const/16 v3, 0x10

    const-string v5, "Droid Sans"

    const-string v9, "STSystemSC"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 47
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_stbshusong:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_stbshusong:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "STBSHUSONG"

    const/16 v13, 0x11

    const-string v15, "STBShusong"

    const-string v19, "STBShusong"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    .line 51
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_stheiti:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_stheiti:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "STHEITI"

    const/16 v3, 0x12

    const-string v5, "STHeiti"

    const-string v9, "STHeiti"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 53
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_myinghei:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_myinghei:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "MYINGHEI"

    const/16 v13, 0x13

    const-string v15, "MYing Hei S"

    const-string v19, "MYing Hei S"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 54
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_kai:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_kai:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "KAI"

    const/16 v3, 0x14

    const-string v5, "STKaiti"

    const-string v9, "STKaiti"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->KAI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 55
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_yuan:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_yuan:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "YUAN"

    const/16 v13, 0x15

    const-string v15, "STZhongyuan"

    const-string v19, "STZhongyuan"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->YUAN:Lcom/mobipocket/android/drawing/FontFamily;

    .line 57
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_droid_sans:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_stsystemtc:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "STSYSTEMTC"

    const/16 v3, 0x16

    const-string v5, "Droid Sans"

    const-string v9, "STSystemTC"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 58
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_stheititc:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_stheititc:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "STHEITITC"

    const/16 v13, 0x17

    const-string v15, "STHeitiTC"

    const-string v19, "STHeitiTC"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 59
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_stsongtc:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_stsongtc:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "STSONGTC"

    const/16 v3, 0x18

    const-string v5, "STSongTC"

    const-string v9, "STSongTC"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSONGTC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 60
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_stkaititc:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_stkaititc:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "STKAITITC"

    const/16 v13, 0x19

    const-string v15, "STKaitiTC"

    const-string v19, "STKaitiTC"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STKAITITC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 61
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_styuantc:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_styuantc:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "STYUANTC"

    const/16 v3, 0x1a

    const-string v5, "STYuanTC"

    const-string v9, "STYuanTC"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STYUANTC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 62
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_publisher_font:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_publisher_font:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "PUBLISHER_FONT"

    const/16 v13, 0x1b

    const-string v15, "publisherfont"

    const-string v19, "Publisher Font"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    .line 63
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_futura:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_futura:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "FUTURA"

    const/16 v3, 0x1c

    const-string v5, "Futura"

    const-string v9, "Futura"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->FUTURA:Lcom/mobipocket/android/drawing/FontFamily;

    .line 64
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_testfont1:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_testfont1:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "TESTFONT1"

    const/16 v13, 0x1d

    const-string v15, "testfont1"

    const-string v19, "testfont1"

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT1:Lcom/mobipocket/android/drawing/FontFamily;

    .line 65
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_testfont2:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_testfont2:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "TESTFONT2"

    const/16 v3, 0x1e

    const-string v5, "testfont2"

    const-string v9, "testfont2"

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT2:Lcom/mobipocket/android/drawing/FontFamily;

    .line 66
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_testfont3:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_testfont3:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "TESTFONT3"

    const/16 v13, 0x1f

    const-string v15, "testfont3"

    const-string v19, "testfont3"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT3:Lcom/mobipocket/android/drawing/FontFamily;

    .line 67
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_testfont4:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_testfont4:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "TESTFONT4"

    const/16 v3, 0x20

    const-string v5, "testfont4"

    const-string v9, "testfont4"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT4:Lcom/mobipocket/android/drawing/FontFamily;

    .line 70
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_ember:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_ember:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "EMBER"

    const/16 v13, 0x21

    const-string v15, "Amazon Ember"

    const-string v19, "Amazon Ember"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    .line 71
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_emberlight:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_emberlight:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "EMBERLIGHT"

    const/16 v3, 0x22

    const-string v5, "Amazon Ember Light"

    const-string v9, "Amazon Ember Light"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    .line 72
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_emberbold:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_emberbold:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "EMBERBOLD"

    const/16 v13, 0x23

    const-string v15, "Amazon Ember Bold"

    const-string v19, "Amazon Ember Bold"

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    .line 73
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_embermedium:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_embermedium:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "EMBERMEDIUM"

    const/16 v3, 0x24

    const-string v5, "Amazon Ember Medium"

    const-string v9, "Amazon Ember Medium"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    .line 74
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_emberitalic:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_emberitalic:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "EMBERITALIC"

    const/16 v13, 0x25

    const-string v15, "Amazon Ember Italic"

    const-string v19, "Amazon Ember Italic"

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 77
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_notonaskh:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_notonaskh:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "NOTO_NASKH"

    const/16 v3, 0x26

    const-string v5, "Noto Naskh Arabic"

    const-string v9, "Noto Naskh Arabic"

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_NASKH:Lcom/mobipocket/android/drawing/FontFamily;

    .line 78
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_sakkalkitab:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_sakkalkitab:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "SAKKAL"

    const/16 v13, 0x27

    const-string v15, "Sakkal Kitab"

    const-string v19, "Sakkal Kitab"

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->SAKKAL:Lcom/mobipocket/android/drawing/FontFamily;

    .line 79
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_diwanmuna:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_diwanmuna:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "DIWAN"

    const/16 v3, 0x28

    const-string v5, "Diwan Muna"

    const-string v9, "Diwan Muna"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->DIWAN:Lcom/mobipocket/android/drawing/FontFamily;

    .line 82
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_droid_serif:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_droid_serif:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->ALL:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "DROID_SERIF"

    const/16 v13, 0x29

    const-string v15, "Droid Serif"

    const/16 v17, 0x0

    const-string v19, "Droid Serif"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    .line 84
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_saguna_gujarati:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_saguna_gujarati:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "SAGUNA_GUJARATI"

    const/16 v3, 0x2a

    const-string v5, "Saguna Gujarati"

    const-string v9, "Saguna Gujarati"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->SAGUNA_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 85
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_noto_sans_gujarati:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_noto_sans_gujarati:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "NOTO_SANS_GUJARATI"

    const/16 v13, 0x2b

    const-string v15, "Noto Sans Gujarati"

    const/16 v17, 0x1

    const-string v19, "Noto Gujarati"

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 86
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_murasu_tamil:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_murasu_tamil:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "MURASU_TAMIL"

    const/16 v3, 0x2c

    const-string v5, "Tamil MN"

    const-string v9, "Tamil Murasu"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->MURASU_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    .line 87
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_noto_sans_tamil:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_noto_sans_tamil:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "NOTO_SANS_TAMIL"

    const/16 v13, 0x2d

    const-string v15, "Noto Sans Tamil"

    const-string v19, "Noto Tamil"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    .line 88
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_devanagari:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_devanagari:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "DEVANAGARI"

    const/16 v3, 0x2e

    const-string v5, "ITF Devanagari"

    const-string v9, "Devanagari"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 89
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_noto_sans_devanagari:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_noto_sans_devanagari:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "NOTO_SANS_DEVANAGARI"

    const/16 v13, 0x2f

    const-string v15, "Noto Devanagari"

    const-string v19, "Saguna Gujarati"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    .line 90
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_new_malayalam:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_new_malayalam:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "NEW_MALAYALAM"

    const/16 v3, 0x30

    const-string v5, "New Malayalam MN"

    const-string v9, "New Malayalam"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->NEW_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    .line 91
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_noto_sans_malayalam:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_noto_sans_malayalam:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "NOTO_SANS_MALAYALAM"

    const/16 v13, 0x31

    const-string v15, "Noto Sans Malayalam"

    const-string v19, "Noto Malayalam"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    .line 92
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_dyslexic:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_dyslexic:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "DYSLEXIC"

    const/16 v3, 0x32

    const-string v5, "OpenDyslexic"

    const-string v9, "OpenDyslexic"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->DYSLEXIC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 95
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_roboto_bold:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_roboto_bold:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "ROBOTO_BOLD"

    const/16 v13, 0x33

    const-string v15, "Roboto Bold"

    const-string v19, "Roboto Bold"

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_BOLD:Lcom/mobipocket/android/drawing/FontFamily;

    .line 96
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_roboto_italic:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_roboto_italic:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "ROBOTO_ITALIC"

    const/16 v3, 0x34

    const-string v5, "Roboto Italic"

    const-string v9, "Roboto Italic"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_ITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    .line 97
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_roboto_light:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_roboto_light:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "ROBOTO_LIGHT"

    const/16 v13, 0x35

    const-string v15, "Roboto Light"

    const-string v19, "Roboto Light"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_LIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    .line 98
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v4, Lcom/amazon/kindle/krl/R$string;->font_filename_roboto_medium:I

    sget v6, Lcom/amazon/kindle/krl/R$string;->font_displayname_roboto_medium:I

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "ROBOTO_MEDIUM"

    const/16 v3, 0x36

    const-string v5, "Roboto Medium"

    const-string v9, "Roboto Medium"

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_MEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    .line 99
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily;

    sget v14, Lcom/amazon/kindle/krl/R$string;->font_filename_roboto_regular:I

    sget v16, Lcom/amazon/kindle/krl/R$string;->font_displayname_roboto_regular:I

    sget-object v18, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v12, "ROBOTO_REGULAR"

    const/16 v13, 0x37

    const-string v15, "Roboto Regular"

    const-string v19, "Roboto Regular"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/mobipocket/android/drawing/FontFamily;-><init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v1, 0x38

    new-array v1, v1, [Lcom/mobipocket/android/drawing/FontFamily;

    .line 28
    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLYDISPLAY:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->MONOSPACE:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->SANS:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x3

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x4

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->CAECILIA:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x5

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->CAECILIA_CONDENSED:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x6

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->GEORGIA:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v4, 0x7

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->PALATINO:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x8

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->BASKERVILLE:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x9

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0xa

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICALIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0xb

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->LUCIDA:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TSUKUMIN:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->KAI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->YUAN:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x16

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x17

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STSONGTC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x18

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STKAITITC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x19

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->STYUANTC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->FUTURA:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT1:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT2:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT3:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->TESTFONT4:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x20

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x21

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x22

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x23

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x24

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x25

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_NASKH:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x26

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->SAKKAL:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x27

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->DIWAN:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x28

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x29

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->SAGUNA_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->MURASU_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x2e

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x2f

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->NEW_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x30

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x31

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->DYSLEXIC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x32

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_BOLD:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x33

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_ITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x34

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_LIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x35

    aput-object v3, v1, v4

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_MEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    const/16 v4, 0x36

    aput-object v3, v1, v4

    const/16 v3, 0x37

    aput-object v0, v1, v3

    sput-object v1, Lcom/mobipocket/android/drawing/FontFamily;->$VALUES:[Lcom/mobipocket/android/drawing/FontFamily;

    .line 105
    sput-object v2, Lcom/mobipocket/android/drawing/FontFamily;->defaultFont:Lcom/mobipocket/android/drawing/FontFamily;

    .line 107
    new-instance v0, Lcom/mobipocket/android/drawing/FontFamily$1;

    invoke-direct {v0}, Lcom/mobipocket/android/drawing/FontFamily$1;-><init>()V

    sput-object v0, Lcom/mobipocket/android/drawing/FontFamily;->MIGRATED_FONTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IZLcom/mobipocket/android/drawing/LanguageSet;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/mobipocket/android/drawing/LanguageSet;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput p3, p0, Lcom/mobipocket/android/drawing/FontFamily;->fileNameResId:I

    .line 116
    iput-object p4, p0, Lcom/mobipocket/android/drawing/FontFamily;->typeFaceName:Ljava/lang/String;

    .line 117
    iput p5, p0, Lcom/mobipocket/android/drawing/FontFamily;->displayNameResId:I

    .line 118
    iput-boolean p6, p0, Lcom/mobipocket/android/drawing/FontFamily;->isCustomFont:Z

    .line 119
    iput-object p7, p0, Lcom/mobipocket/android/drawing/FontFamily;->languages:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 120
    iput-object p8, p0, Lcom/mobipocket/android/drawing/FontFamily;->metricName:Ljava/lang/String;

    .line 121
    iput-boolean p9, p0, Lcom/mobipocket/android/drawing/FontFamily;->isRenderingFont:Z

    return-void
.end method

.method private static fromTypeFaceHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 5

    .line 380
    invoke-static {}, Lcom/amazon/kcp/font/SystemFontUtils;->getInstance()Lcom/amazon/kcp/font/SystemFontUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/SystemFontUtils;->getSystemFontOverrideTypeFaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 385
    :cond_0
    invoke-static {}, Lcom/mobipocket/android/drawing/FontFamily;->values()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 386
    invoke-virtual {v3}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    iget-object v4, v3, Lcom/mobipocket/android/drawing/FontFamily;->languages:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v4, p1}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_3
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-static {p0, v0}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static fromTypeFaceNameAndLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 0

    .line 376
    invoke-static {p0, p1}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 3

    .line 235
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    .line 236
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 238
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 240
    :cond_0
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 242
    :cond_1
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->TSUKUMIN:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 247
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->TSUKUMIN:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 250
    :cond_2
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 252
    :cond_3
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 253
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 254
    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 255
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 256
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 258
    :cond_4
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 261
    :cond_5
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 264
    :cond_6
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 267
    :cond_7
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 268
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 269
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 272
    :cond_8
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 274
    :cond_9
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 275
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->SAGUNA_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 276
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->SAGUNA_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 279
    :cond_a
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 281
    :cond_b
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 282
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->MURASU_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 283
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->MURASU_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 286
    :cond_c
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 288
    :cond_d
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 289
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NEW_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 290
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NEW_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 293
    :cond_e
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 296
    :cond_f
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 298
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->SAKKAL:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 300
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->SAKKAL:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 303
    :cond_10
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_NASKH:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 306
    :cond_11
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 307
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 310
    :cond_12
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->defaultFont:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0
.end method

.method public static getHeaderAndFooterFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 2

    .line 338
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 342
    :cond_1
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p0

    sget-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 343
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->STSONGTC:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 344
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 345
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 348
    :cond_3
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0
.end method

.method public static getUIFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 2

    .line 321
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_DEVANAGARI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 324
    :cond_0
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_GUJARATI:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 327
    :cond_1
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_TAMIL:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 330
    :cond_2
    invoke-static {p0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p0

    sget-object v0, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 331
    sget-object p0, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_SANS_MALAYALAM:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getValue(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 3

    .line 400
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->MIGRATED_FONTS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0

    .line 406
    :cond_1
    invoke-static {p0}, Lcom/mobipocket/android/drawing/FontFamily;->valueOf(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 28
    const-class v0, Lcom/mobipocket/android/drawing/FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0
.end method

.method public static values()[Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 28
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->$VALUES:[Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0}, [Lcom/mobipocket/android/drawing/FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobipocket/android/drawing/FontFamily;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 167
    iget v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->displayNameResId:I

    .line 168
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p0, v1, :cond_0

    .line 170
    sget v0, Lcom/amazon/kindle/krl/R$string;->font_displayname_myinghei_new:I

    .line 173
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Lcom/mobipocket/android/drawing/LanguageSet;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->languages:Lcom/mobipocket/android/drawing/LanguageSet;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeFaceFileName()Ljava/lang/String;
    .locals 2

    .line 180
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/android/drawing/FontFamily;->fileNameResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/amazon/kcp/font/SystemFontUtils;->getInstance()Lcom/amazon/kcp/font/SystemFontUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/font/SystemFontUtils;->getSystemFontOverrideFontFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getTypeFaceName()Ljava/lang/String;
    .locals 2

    .line 229
    invoke-static {}, Lcom/amazon/kcp/font/SystemFontUtils;->getInstance()Lcom/amazon/kcp/font/SystemFontUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/android/drawing/FontFamily;->typeFaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/font/SystemFontUtils;->getSystemFontOverrideTypeFaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->typeFaceName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public isAvailableForLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->languages:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v0, p1}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mobipocket/android/drawing/FontFamily;->languages:Lcom/mobipocket/android/drawing/LanguageSet;

    sget-object v1, Lcom/mobipocket/android/drawing/LanguageSet;->TEST:Lcom/mobipocket/android/drawing/LanguageSet;

    if-ne p1, v1, :cond_0

    sget-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->TestFontsEnabled:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isCustomFont()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->isCustomFont:Z

    return v0
.end method

.method public isRenderingFont()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/mobipocket/android/drawing/FontFamily;->isRenderingFont:Z

    return v0
.end method
