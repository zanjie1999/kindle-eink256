.class public final enum Lcom/amazon/kcp/reader/ui/ColorModeData;
.super Ljava/lang/Enum;
.source "ColorModeData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/ColorModeData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum BLACK:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum CHRISTMAS:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum GREEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum HALLOWEEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum ILLINOIS:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum MARYLAND:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum NEBRASKA:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum NIGHT:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum SEPIA:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum TERMINAL:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum USA:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum VALENTINES:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum WASHINGTON:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field public static final enum WHITE:Lcom/amazon/kcp/reader/ui/ColorModeData;

.field private static final idToColorModeDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
            "Lcom/amazon/kcp/reader/ui/ColorModeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field private easterEggColor:Z

.field private easterEggGesture:Ljava/lang/String;

.field private uiColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 10
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v3, 0x0

    const-string v4, "BLACK"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->BLACK:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 11
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v8, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->CHRISTMAS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v10, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v6, "CHRISTMAS"

    const/4 v7, 0x1

    const-string v9, "christmas"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->CHRISTMAS:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 12
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v4, 0x2

    const-string v5, "GREEN"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->GREEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 13
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v9, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->HALLOWEEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v11, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v7, "HALLOWEEN"

    const/4 v8, 0x3

    const-string v10, "halloween"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->HALLOWEEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 14
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v15, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->ILLINOIS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v17, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v13, "ILLINOIS"

    const/4 v14, 0x4

    const-string v16, "illinois"

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->ILLINOIS:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 15
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v8, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->UMD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v10, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v6, "MARYLAND"

    const/4 v7, 0x5

    const-string v9, "maryland"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->MARYLAND:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v14, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NEBRASKA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v16, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v12, "NEBRASKA"

    const/4 v13, 0x6

    const-string v15, "n"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->NEBRASKA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 17
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v5, 0x7

    const-string v6, "SEPIA"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->SEPIA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 18
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v10, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->TERMINAL:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v12, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v8, "TERMINAL"

    const/16 v9, 0x8

    const-string v11, "t"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->TERMINAL:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 19
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v16, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->USA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v18, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v14, "USA"

    const/16 v15, 0x9

    const-string/jumbo v17, "usa"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->USA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 20
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v9, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->VALENTINES:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v11, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v7, "VALENTINES"

    const/16 v8, 0xa

    const-string/jumbo v10, "v"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->VALENTINES:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v15, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->PURPLE_AND_GOLD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v17, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const-string v13, "WASHINGTON"

    const/16 v14, 0xb

    const-string/jumbo v16, "w"

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->WASHINGTON:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/16 v6, 0xc

    const-string v7, "NIGHT"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->NIGHT:Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 23
    new-instance v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/16 v7, 0xd

    const-string v8, "WHITE"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/amazon/kcp/reader/ui/ColorModeData;-><init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->WHITE:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 9
    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->BLACK:Lcom/amazon/kcp/reader/ui/ColorModeData;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->CHRISTMAS:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v8, 0x1

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->GREEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->HALLOWEEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->ILLINOIS:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->MARYLAND:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->NEBRASKA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->SEPIA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->TERMINAL:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->USA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->VALENTINES:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->WASHINGTON:Lcom/amazon/kcp/reader/ui/ColorModeData;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->NIGHT:Lcom/amazon/kcp/reader/ui/ColorModeData;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/amazon/kcp/reader/ui/ColorModeData;->$VALUES:[Lcom/amazon/kcp/reader/ui/ColorModeData;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->idToColorModeDataMap:Ljava/util/HashMap;

    .line 35
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColorModeData;->values()[Lcom/amazon/kcp/reader/ui/ColorModeData;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 36
    sget-object v4, Lcom/amazon/kcp/reader/ui/ColorModeData;->idToColorModeDataMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/amazon/kcp/reader/ui/ColorModeData;->color:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->color:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->easterEggColor:Z

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->easterEggGesture:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->uiColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/android/docviewer/KindleDocColorMode$Id;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->color:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->easterEggColor:Z

    .line 55
    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->easterEggGesture:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->uiColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method public static getEasterEggColorForGesture(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ColorModeData;
    .locals 5

    .line 73
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColorModeData;->values()[Lcom/amazon/kcp/reader/ui/ColorModeData;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    iget-boolean v4, v3, Lcom/amazon/kcp/reader/ui/ColorModeData;->easterEggColor:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/amazon/kcp/reader/ui/ColorModeData;->easterEggGesture:Ljava/lang/String;

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

.method public static getUIColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->idToColorModeDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    if-eqz p0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->uiColorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ColorModeData;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/ColorModeData;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/ColorModeData;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->$VALUES:[Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/ColorModeData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/ColorModeData;

    return-object v0
.end method


# virtual methods
.method public getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ColorModeData;->color:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method
