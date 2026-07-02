.class public final enum Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
.super Ljava/lang/Enum;
.source "KindleDocColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/KindleDocColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/KindleDocColorMode$Id;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum CHRISTMAS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum HALLOWEEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum ILLINOIS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum NEBRASKA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum OTTER_DICTIONARY_POPUP:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum PURPLE_AND_GOLD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum TERMINAL:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum UMD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum USA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum VALENTINES:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field public static final enum WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;


# instance fields
.field private final m_isEasterEgg:Z

.field private final m_serializationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v1, 0x0

    const-string v2, "WHITE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 27
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x1

    const-string v3, "BLACK"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 32
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v3, 0x2

    const-string v4, "SEPIA"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 37
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v4, 0x3

    const-string v5, "PURPLE_AND_GOLD"

    invoke-direct {v0, v5, v4, v4, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->PURPLE_AND_GOLD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 42
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v5, 0x4

    const-string v6, "TERMINAL"

    invoke-direct {v0, v6, v5, v5, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->TERMINAL:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 47
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v6, 0x5

    const-string v7, "NEBRASKA"

    invoke-direct {v0, v7, v6, v6, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NEBRASKA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 52
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v7, 0x6

    const-string v8, "USA"

    invoke-direct {v0, v8, v7, v7, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->USA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 57
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v8, 0x7

    const-string v9, "VALENTINES"

    invoke-direct {v0, v9, v8, v8, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->VALENTINES:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 62
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v9, 0x8

    const/16 v10, 0x9

    const-string v11, "HALLOWEEN"

    invoke-direct {v0, v11, v9, v10, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->HALLOWEEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 67
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v11, 0xa

    const-string v12, "CHRISTMAS"

    invoke-direct {v0, v12, v10, v11, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->CHRISTMAS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 72
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v12, 0xb

    const-string v13, "ILLINOIS"

    invoke-direct {v0, v13, v11, v12, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->ILLINOIS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 77
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v13, 0xc

    const-string v14, "OTTER_DICTIONARY_POPUP"

    invoke-direct {v0, v14, v12, v13}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->OTTER_DICTIONARY_POPUP:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 82
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v14, 0xd

    const-string v15, "UMD"

    invoke-direct {v0, v15, v13, v14, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->UMD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 87
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v15, 0xe

    const-string v13, "GREEN"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 91
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v13, 0xf

    const-string v14, "NIGHT"

    invoke-direct {v0, v14, v15, v13}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    new-array v13, v13, [Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 18
    sget-object v14, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->PURPLE_AND_GOLD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->TERMINAL:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NEBRASKA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->USA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->VALENTINES:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->HALLOWEEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->CHRISTMAS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->ILLINOIS:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->OTTER_DICTIONARY_POPUP:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->UMD:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    aput-object v0, v13, v15

    sput-object v13, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->m_serializationValue:I

    .line 99
    iput-boolean p4, p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->m_isEasterEgg:Z

    return-void
.end method

.method public static fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 5

    .line 111
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->values()[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    iget v4, v3, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->m_serializationValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method


# virtual methods
.method public isEasterEgg()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->m_isEasterEgg:Z

    return v0
.end method

.method public serializationValue()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->m_serializationValue:I

    return v0
.end method
