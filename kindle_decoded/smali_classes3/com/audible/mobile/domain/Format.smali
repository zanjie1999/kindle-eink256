.class public final enum Lcom/audible/mobile/domain/Format;
.super Ljava/lang/Enum;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/Format;

.field public static final enum AA:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_22:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_22_32:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_22_64:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_44:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_44_128:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_44_64:Lcom/audible/mobile/domain/Format;

.field public static final enum AAX_SYNC_IMG:Lcom/audible/mobile/domain/Format;

.field public static final enum ACELP16:Lcom/audible/mobile/domain/Format;

.field public static final enum ACELP85:Lcom/audible/mobile/domain/Format;

.field public static final enum FORMAT1:Lcom/audible/mobile/domain/Format;

.field public static final enum FORMAT2:Lcom/audible/mobile/domain/Format;

.field public static final enum FORMAT3:Lcom/audible/mobile/domain/Format;

.field public static final enum FORMAT4:Lcom/audible/mobile/domain/Format;

.field public static final enum HAS_SYNC_WEBLINK:Lcom/audible/mobile/domain/Format;

.field public static final enum M4A_AAX:Lcom/audible/mobile/domain/Format;

.field public static final enum M4A_AAX_22:Lcom/audible/mobile/domain/Format;

.field public static final enum M4A_AAX_44:Lcom/audible/mobile/domain/Format;

.field public static final enum M4A_AAX_44_64:Lcom/audible/mobile/domain/Format;

.field public static final enum MP332:Lcom/audible/mobile/domain/Format;

.field public static final enum MP4_22_32:Lcom/audible/mobile/domain/Format;

.field public static final enum MP4_22_64:Lcom/audible/mobile/domain/Format;

.field public static final enum PIFF_22_32:Lcom/audible/mobile/domain/Format;

.field public static final enum PIFF_22_64:Lcom/audible/mobile/domain/Format;

.field public static final enum REV1:Lcom/audible/mobile/domain/Format;

.field public static final enum UNKNOWN:Lcom/audible/mobile/domain/Format;


# instance fields
.field private final codec:Lcom/audible/mobile/domain/Codec;

.field private final extension:Lcom/audible/mobile/domain/Extension;

.field private final profile:Lcom/audible/mobile/domain/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 34
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->AAX_SYNC_IMG:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    const/4 v3, 0x0

    const-string v4, "AAX_SYNC_IMG"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_SYNC_IMG:Lcom/audible/mobile/domain/Format;

    .line 35
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->AAX_SYNC_WEBLINK:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    const/4 v4, 0x1

    const-string v5, "HAS_SYNC_WEBLINK"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->HAS_SYNC_WEBLINK:Lcom/audible/mobile/domain/Format;

    .line 36
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v9, Lcom/audible/mobile/domain/Codec;->LC_64_22050_Stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v10, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    sget-object v11, Lcom/audible/mobile/domain/Profile;->ep6:Lcom/audible/mobile/domain/Profile;

    const-string v7, "AAX_22"

    const/4 v8, 0x2

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_22:Lcom/audible/mobile/domain/Format;

    .line 37
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v15, Lcom/audible/mobile/domain/Codec;->LC_128_44100_Stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v16, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    sget-object v17, Lcom/audible/mobile/domain/Profile;->ep7:Lcom/audible/mobile/domain/Profile;

    const-string v13, "AAX_44"

    const/4 v14, 0x3

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_44:Lcom/audible/mobile/domain/Format;

    .line 38
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v8, Lcom/audible/mobile/domain/Codec;->LC_64_44100_Stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v9, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    sget-object v10, Lcom/audible/mobile/domain/Profile;->ep9:Lcom/audible/mobile/domain/Profile;

    const-string v6, "AAX_44_64"

    const/4 v7, 0x4

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_44_64:Lcom/audible/mobile/domain/Format;

    .line 39
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v14, Lcom/audible/mobile/domain/Codec;->LC_32_22050_Mono:Lcom/audible/mobile/domain/Codec;

    sget-object v15, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    sget-object v16, Lcom/audible/mobile/domain/Profile;->ep5:Lcom/audible/mobile/domain/Profile;

    const-string v12, "AAX_22_32"

    const/4 v13, 0x5

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    .line 40
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v8, Lcom/audible/mobile/domain/Codec;->LC_128_44100_stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v9, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    sget-object v10, Lcom/audible/mobile/domain/Profile;->ep7:Lcom/audible/mobile/domain/Profile;

    const-string v6, "AAX_44_128"

    const/4 v7, 0x6

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_44_128:Lcom/audible/mobile/domain/Format;

    .line 41
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v14, Lcom/audible/mobile/domain/Codec;->LC_64_22050_stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v15, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    sget-object v16, Lcom/audible/mobile/domain/Profile;->ep6:Lcom/audible/mobile/domain/Profile;

    const-string v12, "AAX_22_64"

    const/4 v13, 0x7

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX_22_64:Lcom/audible/mobile/domain/Format;

    .line 42
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->AAX:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aax:Lcom/audible/mobile/domain/Extension;

    const/16 v5, 0x8

    const-string v6, "AAX"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AAX:Lcom/audible/mobile/domain/Format;

    .line 43
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v10, Lcom/audible/mobile/domain/Codec;->mp332:Lcom/audible/mobile/domain/Codec;

    sget-object v11, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    sget-object v12, Lcom/audible/mobile/domain/Profile;->mp332:Lcom/audible/mobile/domain/Profile;

    const-string v8, "AA"

    const/16 v9, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->AA:Lcom/audible/mobile/domain/Format;

    .line 44
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v16, Lcom/audible/mobile/domain/Codec;->mp332:Lcom/audible/mobile/domain/Codec;

    sget-object v17, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    sget-object v18, Lcom/audible/mobile/domain/Profile;->mp332:Lcom/audible/mobile/domain/Profile;

    const-string v14, "MP332"

    const/16 v15, 0xa

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->MP332:Lcom/audible/mobile/domain/Format;

    .line 45
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->acelp16:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v6, 0xb

    const-string v7, "ACELP16"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->ACELP16:Lcom/audible/mobile/domain/Format;

    .line 46
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->acelp85:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v7, 0xc

    const-string v8, "ACELP85"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->ACELP85:Lcom/audible/mobile/domain/Format;

    .line 47
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->format4:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v8, 0xd

    const-string v9, "FORMAT4"

    invoke-direct {v0, v9, v8, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->FORMAT4:Lcom/audible/mobile/domain/Format;

    .line 48
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->format3:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v9, 0xe

    const-string v10, "FORMAT3"

    invoke-direct {v0, v10, v9, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->FORMAT3:Lcom/audible/mobile/domain/Format;

    .line 49
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->format2:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v10, 0xf

    const-string v11, "FORMAT2"

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->FORMAT2:Lcom/audible/mobile/domain/Format;

    .line 50
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->format1:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v11, 0x10

    const-string v12, "FORMAT1"

    invoke-direct {v0, v12, v11, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->FORMAT1:Lcom/audible/mobile/domain/Format;

    .line 51
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->rev1:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->aa:Lcom/audible/mobile/domain/Extension;

    const/16 v12, 0x11

    const-string v13, "REV1"

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->REV1:Lcom/audible/mobile/domain/Format;

    .line 52
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v17, Lcom/audible/mobile/domain/Codec;->LC_64_22050_Stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v18, Lcom/audible/mobile/domain/Extension;->m4a:Lcom/audible/mobile/domain/Extension;

    sget-object v19, Lcom/audible/mobile/domain/Profile;->ep6:Lcom/audible/mobile/domain/Profile;

    const-string v15, "M4A_AAX_22"

    const/16 v16, 0x12

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->M4A_AAX_22:Lcom/audible/mobile/domain/Format;

    .line 53
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v23, Lcom/audible/mobile/domain/Codec;->LC_128_44100_Stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v24, Lcom/audible/mobile/domain/Extension;->m4a:Lcom/audible/mobile/domain/Extension;

    sget-object v25, Lcom/audible/mobile/domain/Profile;->ep7:Lcom/audible/mobile/domain/Profile;

    const-string v21, "M4A_AAX_44"

    const/16 v22, 0x13

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->M4A_AAX_44:Lcom/audible/mobile/domain/Format;

    .line 54
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v16, Lcom/audible/mobile/domain/Codec;->LC_64_44100_Stereo:Lcom/audible/mobile/domain/Codec;

    sget-object v17, Lcom/audible/mobile/domain/Extension;->m4a:Lcom/audible/mobile/domain/Extension;

    sget-object v18, Lcom/audible/mobile/domain/Profile;->ep9:Lcom/audible/mobile/domain/Profile;

    const-string v14, "M4A_AAX_44_64"

    const/16 v15, 0x14

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->M4A_AAX_44_64:Lcom/audible/mobile/domain/Format;

    .line 55
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v22, Lcom/audible/mobile/domain/Codec;->LC_32_22050_Mono:Lcom/audible/mobile/domain/Codec;

    sget-object v23, Lcom/audible/mobile/domain/Extension;->m4a:Lcom/audible/mobile/domain/Extension;

    sget-object v24, Lcom/audible/mobile/domain/Profile;->ep5:Lcom/audible/mobile/domain/Profile;

    const-string v20, "M4A_AAX"

    const/16 v21, 0x15

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->M4A_AAX:Lcom/audible/mobile/domain/Format;

    .line 56
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->mp42232:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->mp4:Lcom/audible/mobile/domain/Extension;

    const/16 v13, 0x16

    const-string v14, "MP4_22_32"

    invoke-direct {v0, v14, v13, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->MP4_22_32:Lcom/audible/mobile/domain/Format;

    .line 57
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->mp42264:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->mp4:Lcom/audible/mobile/domain/Extension;

    const/16 v14, 0x17

    const-string v15, "MP4_22_64"

    invoke-direct {v0, v15, v14, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->MP4_22_64:Lcom/audible/mobile/domain/Format;

    .line 58
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->piff2232:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->mp4:Lcom/audible/mobile/domain/Extension;

    const/16 v15, 0x18

    const-string v14, "PIFF_22_32"

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->PIFF_22_32:Lcom/audible/mobile/domain/Format;

    .line 59
    new-instance v0, Lcom/audible/mobile/domain/Format;

    sget-object v1, Lcom/audible/mobile/domain/Codec;->piff2264:Lcom/audible/mobile/domain/Codec;

    sget-object v2, Lcom/audible/mobile/domain/Extension;->mp4:Lcom/audible/mobile/domain/Extension;

    const/16 v14, 0x19

    const-string v15, "PIFF_22_64"

    invoke-direct {v0, v15, v14, v1, v2}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->PIFF_22_64:Lcom/audible/mobile/domain/Format;

    .line 60
    new-instance v0, Lcom/audible/mobile/domain/Format;

    const/4 v1, 0x0

    const/16 v2, 0x1a

    const-string v15, "UNKNOWN"

    invoke-direct {v0, v15, v2, v1, v1}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V

    sput-object v0, Lcom/audible/mobile/domain/Format;->UNKNOWN:Lcom/audible/mobile/domain/Format;

    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/audible/mobile/domain/Format;

    .line 32
    sget-object v15, Lcom/audible/mobile/domain/Format;->AAX_SYNC_IMG:Lcom/audible/mobile/domain/Format;

    aput-object v15, v1, v3

    sget-object v3, Lcom/audible/mobile/domain/Format;->HAS_SYNC_WEBLINK:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX_22:Lcom/audible/mobile/domain/Format;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX_44:Lcom/audible/mobile/domain/Format;

    const/4 v4, 0x3

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX_44_64:Lcom/audible/mobile/domain/Format;

    const/4 v4, 0x4

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    const/4 v4, 0x5

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX_44_128:Lcom/audible/mobile/domain/Format;

    const/4 v4, 0x6

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX_22_64:Lcom/audible/mobile/domain/Format;

    const/4 v4, 0x7

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->AAX:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v5

    sget-object v3, Lcom/audible/mobile/domain/Format;->AA:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x9

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->MP332:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0xa

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->ACELP16:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v6

    sget-object v3, Lcom/audible/mobile/domain/Format;->ACELP85:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v7

    sget-object v3, Lcom/audible/mobile/domain/Format;->FORMAT4:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v8

    sget-object v3, Lcom/audible/mobile/domain/Format;->FORMAT3:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v9

    sget-object v3, Lcom/audible/mobile/domain/Format;->FORMAT2:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v10

    sget-object v3, Lcom/audible/mobile/domain/Format;->FORMAT1:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v11

    sget-object v3, Lcom/audible/mobile/domain/Format;->REV1:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v12

    sget-object v3, Lcom/audible/mobile/domain/Format;->M4A_AAX_22:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->M4A_AAX_44:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->M4A_AAX_44_64:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->M4A_AAX:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->MP4_22_32:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v13

    sget-object v3, Lcom/audible/mobile/domain/Format;->MP4_22_64:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x17

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->PIFF_22_32:Lcom/audible/mobile/domain/Format;

    const/16 v4, 0x18

    aput-object v3, v1, v4

    sget-object v3, Lcom/audible/mobile/domain/Format;->PIFF_22_64:Lcom/audible/mobile/domain/Format;

    aput-object v3, v1, v14

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/mobile/domain/Format;->$VALUES:[Lcom/audible/mobile/domain/Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Codec;",
            "Lcom/audible/mobile/domain/Extension;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/domain/Format;-><init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/mobile/domain/Codec;Lcom/audible/mobile/domain/Extension;Lcom/audible/mobile/domain/Profile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Codec;",
            "Lcom/audible/mobile/domain/Extension;",
            "Lcom/audible/mobile/domain/Profile;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/audible/mobile/domain/Format;->codec:Lcom/audible/mobile/domain/Codec;

    .line 74
    iput-object p4, p0, Lcom/audible/mobile/domain/Format;->extension:Lcom/audible/mobile/domain/Extension;

    .line 75
    iput-object p5, p0, Lcom/audible/mobile/domain/Format;->profile:Lcom/audible/mobile/domain/Profile;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;
    .locals 1

    .line 32
    const-class v0, Lcom/audible/mobile/domain/Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/Format;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/Format;
    .locals 1

    .line 32
    sget-object v0, Lcom/audible/mobile/domain/Format;->$VALUES:[Lcom/audible/mobile/domain/Format;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/Format;

    return-object v0
.end method


# virtual methods
.method public getCodec()Lcom/audible/mobile/domain/Codec;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/audible/mobile/domain/Format;->codec:Lcom/audible/mobile/domain/Codec;

    return-object v0
.end method

.method public getExtension()Lcom/audible/mobile/domain/Extension;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/audible/mobile/domain/Format;->extension:Lcom/audible/mobile/domain/Extension;

    return-object v0
.end method
