.class public final enum Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
.super Ljava/lang/Enum;
.source "DynamicFontDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/DynamicFontDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadableFonts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum DEVANAGARI:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum DIWAN:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum EMBER_BOLD:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum GUJARATI:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum MALAYALAM:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum OPEN_DYSLEXIC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum SAKKAL:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum SECONDARY_CHINESE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum SECONDARY_JAPANESE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum SECONDARY_LATIN:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STHEITISC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STHEITITC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STKAITISC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STKAITITC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STSONGSC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STSONGTC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STYUANSC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum STYUANTC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

.field public static final enum TAMIL:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;


# instance fields
.field private defaultFont:Z

.field private fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

.field private languageSet:Lcom/mobipocket/android/drawing/LanguageSet;

.field private onDemandDownload:Z

.field private previewDrawable:I

.field private resourceSetName:Ljava/lang/String;

.field private resourceSize:Ljava/lang/String;

.field private shouldDownloadManually:Z

.field private supportDeletion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 132
    new-instance v7, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    sget-object v5, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v1, "OPEN_DYSLEXIC"

    const/4 v2, 0x0

    const-string v3, "OpenDyslexicFontRS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v7, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->OPEN_DYSLEXIC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 133
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    sget-object v13, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v9, "EMBER_BOLD"

    const/4 v10, 0x1

    const-string v11, "EmberBoldFontRS"

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->EMBER_BOLD:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 134
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    sget-object v6, Lcom/mobipocket/android/drawing/LanguageSet;->GU:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "GUJARATI"

    const/4 v3, 0x2

    const-string v4, "IndicGUFontRS"

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->GUJARATI:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 135
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    sget-object v13, Lcom/mobipocket/android/drawing/LanguageSet;->TA:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v9, "TAMIL"

    const/4 v10, 0x3

    const-string v11, "IndicTAFontRS"

    const/4 v12, 0x1

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->TAMIL:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 136
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    sget-object v6, Lcom/mobipocket/android/drawing/LanguageSet;->ML:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v2, "MALAYALAM"

    const/4 v3, 0x4

    const-string v4, "IndicMLFontRS"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->MALAYALAM:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 137
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/lit8 v12, v1, 0x1

    sget-object v13, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    const/4 v14, 0x1

    const-string v9, "SAKKAL"

    const/4 v10, 0x5

    const-string v11, "ArabicSakkalFontRS"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SAKKAL:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 138
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v17, 0x6

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    sget-object v20, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    const/16 v21, 0x1

    const-string v16, "DIWAN"

    const-string v18, "ArabicDiwanFontRS"

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->DIWAN:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 139
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/4 v5, 0x7

    const/4 v7, 0x1

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->DEVANAGARI:Lcom/mobipocket/android/drawing/LanguageSet;

    const/4 v9, 0x1

    const-string v4, "DEVANAGARI"

    const-string v6, "IndicDEVANAGARIFontRS"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->DEVANAGARI:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 140
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v12, 0x8

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v14

    sget-object v15, Lcom/mobipocket/android/drawing/LanguageSet;->JA:Lcom/mobipocket/android/drawing/LanguageSet;

    const/16 v16, 0x0

    const-string v11, "SECONDARY_JAPANESE"

    const-string v13, "SecondaryJapaneseFontRS"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SECONDARY_JAPANESE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 141
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v5, 0x9

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v7

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    const/4 v9, 0x0

    const-string v4, "SECONDARY_LATIN"

    const-string v6, "SecondaryLatinFontRS"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SECONDARY_LATIN:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 142
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v12, 0xa

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v14

    sget-object v15, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const-string v11, "SECONDARY_CHINESE"

    const-string v13, "SecondaryChineseFontRS"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SECONDARY_CHINESE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 143
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v19, 0xb

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v21

    sget-object v22, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const/16 v23, 0x1

    const/16 v24, 0x0

    sget-object v25, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    sget v26, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stbshusong:I

    const/16 v28, 0x0

    const-string v18, "STSONGSC"

    const-string v20, "STSongSCRS"

    const-string v27, "8.6MB"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v28}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STSONGSC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 144
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v5, 0xc

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v7

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const/4 v10, 0x1

    sget-object v11, Lcom/mobipocket/android/drawing/FontFamily;->STHEITI:Lcom/mobipocket/android/drawing/FontFamily;

    sget v12, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stheiti:I

    const/4 v14, 0x1

    const-string v4, "STHEITISC"

    const-string v6, "STHeitiSCRS"

    const-string v13, "7.1MB"

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STHEITISC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 145
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v17, 0xd

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v19

    sget-object v20, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    const/16 v21, 0x0

    const/16 v22, 0x1

    sget-object v23, Lcom/mobipocket/android/drawing/FontFamily;->KAI:Lcom/mobipocket/android/drawing/FontFamily;

    sget v24, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stkaiti:I

    const/16 v26, 0x1

    const-string v16, "STKAITISC"

    const-string v18, "STKaitiSCRS"

    const-string v25, "10.4MB"

    move-object v15, v0

    invoke-direct/range {v15 .. v26}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STKAITISC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 146
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v5, 0xe

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v7

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    sget-object v11, Lcom/mobipocket/android/drawing/FontFamily;->YUAN:Lcom/mobipocket/android/drawing/FontFamily;

    sget v12, Lcom/amazon/kindle/krl/R$drawable;->ic_font_styuan:I

    const-string v4, "STYUANSC"

    const-string v6, "STYuanSCRS"

    const-string v13, "8.5MB"

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STYUANSC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 147
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v17, 0xf

    const/16 v19, 0x1

    sget-object v20, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    sget-object v23, Lcom/mobipocket/android/drawing/FontFamily;->STSONGTC:Lcom/mobipocket/android/drawing/FontFamily;

    sget v24, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stsongtc:I

    const-string v16, "STSONGTC"

    const-string v18, "STSongTCRS"

    const-string v25, "23.5MB"

    move-object v15, v0

    invoke-direct/range {v15 .. v26}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STSONGTC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 148
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v5, 0x10

    const/4 v7, 0x1

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const/4 v9, 0x1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v10

    sget-object v11, Lcom/mobipocket/android/drawing/FontFamily;->STHEITITC:Lcom/mobipocket/android/drawing/FontFamily;

    sget v12, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stheititc:I

    const/4 v14, 0x0

    const-string v4, "STHEITITC"

    const-string v6, "STHeitiTCRS"

    const-string v13, "17.2MB"

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STHEITITC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 149
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v17, 0x11

    sget-object v20, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    sget-object v23, Lcom/mobipocket/android/drawing/FontFamily;->STKAITITC:Lcom/mobipocket/android/drawing/FontFamily;

    sget v24, Lcom/amazon/kindle/krl/R$drawable;->ic_font_stkaititc:I

    const-string v16, "STKAITITC"

    const-string v18, "STKaitiTCRS"

    const-string v25, "31MB"

    move-object v15, v0

    invoke-direct/range {v15 .. v26}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STKAITITC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 150
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v5, 0x12

    sget-object v8, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lcom/mobipocket/android/drawing/FontFamily;->STYUANTC:Lcom/mobipocket/android/drawing/FontFamily;

    sget v12, Lcom/amazon/kindle/krl/R$drawable;->ic_font_styuantc:I

    const/4 v14, 0x1

    const-string v4, "STYUANTC"

    const-string v6, "STYuanTCRS"

    const-string v13, "21.8MB"

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STYUANTC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/16 v1, 0x13

    new-array v1, v1, [Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    const/4 v3, 0x0

    .line 131
    sget-object v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->OPEN_DYSLEXIC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v4, v1, v3

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->EMBER_BOLD:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->GUJARATI:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->TAMIL:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->MALAYALAM:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SAKKAL:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->DIWAN:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->DEVANAGARI:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SECONDARY_JAPANESE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SECONDARY_LATIN:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->SECONDARY_CHINESE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STSONGSC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STHEITISC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STKAITISC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STYUANSC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STSONGTC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STHEITITC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->STKAITITC:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->$VALUES:[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mobipocket/android/drawing/LanguageSet;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 178
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/mobipocket/android/drawing/LanguageSet;ZZLcom/mobipocket/android/drawing/FontFamily;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mobipocket/android/drawing/LanguageSet;",
            "ZZ",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput-object p3, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->resourceSetName:Ljava/lang/String;

    .line 184
    iput-boolean p4, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->onDemandDownload:Z

    .line 185
    iput-object p5, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->languageSet:Lcom/mobipocket/android/drawing/LanguageSet;

    .line 186
    iput-boolean p6, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->defaultFont:Z

    .line 187
    iput-boolean p7, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->shouldDownloadManually:Z

    .line 188
    iput-object p8, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

    .line 189
    iput p9, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->previewDrawable:I

    .line 190
    iput-object p10, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->resourceSize:Ljava/lang/String;

    .line 191
    iput-boolean p11, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->supportDeletion:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->resourceSetName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->resourceSize:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->defaultFont:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->onDemandDownload:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->languageSet:Lcom/mobipocket/android/drawing/LanguageSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->shouldDownloadManually:Z

    return p0
.end method

.method public static doesOnDemandFontExist(Ljava/lang/String;)Z
    .locals 0

    .line 234
    invoke-static {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getOnDemandFonts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static getFontResourceSet(Ljava/lang/String;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 5

    .line 197
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 198
    iget-object v4, v3, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->resourceSetName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getOnDemandFonts(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 210
    iget-object v5, v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->languageSet:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v5, p0}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->onDemandDownload:Z

    if-eqz v5, :cond_2

    .line 211
    iget-boolean v5, v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->shouldDownloadManually:Z

    if-nez v5, :cond_1

    .line 212
    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$100()Ljava/util/Map;

    move-result-object v5

    iget-object v6, v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$100()Ljava/util/Map;

    move-result-object v5

    iget-object v6, v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$100()Ljava/util/Map;

    move-result-object v6

    iget-object v7, v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 1

    .line 131
    const-class v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->$VALUES:[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    return-object v0
.end method


# virtual methods
.method public getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->fontFamily:Lcom/mobipocket/android/drawing/FontFamily;

    return-object v0
.end method

.method public getLanguageSet()Lcom/mobipocket/android/drawing/LanguageSet;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->languageSet:Lcom/mobipocket/android/drawing/LanguageSet;

    return-object v0
.end method

.method public getPreviewDrawable()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->previewDrawable:I

    return v0
.end method

.method public isSupportDeletion()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->supportDeletion:Z

    return v0
.end method
