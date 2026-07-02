.class public final enum Lcom/amazon/ksdk/presets/BookFormatType;
.super Ljava/lang/Enum;
.source "BookFormatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/BookFormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum KF8:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum LUNA:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum MOBI7:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum MOP:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum PDF:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum TOPAZ:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum YJ:Lcom/amazon/ksdk/presets/BookFormatType;

.field public static final enum YJOP:Lcom/amazon/ksdk/presets/BookFormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->INVALID:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v2, 0x1

    const-string v3, "YJ"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->YJ:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v3, 0x2

    const-string v4, "KF8"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->KF8:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v4, 0x3

    const-string v5, "MOBI7"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->MOBI7:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 17
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v5, 0x4

    const-string v6, "TOPAZ"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->TOPAZ:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v6, 0x5

    const-string v7, "LUNA"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->LUNA:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v7, 0x6

    const-string v8, "PDF"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->PDF:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 20
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/4 v8, 0x7

    const-string v9, "MOP"

    invoke-direct {v0, v9, v8}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->MOP:Lcom/amazon/ksdk/presets/BookFormatType;

    .line 21
    new-instance v0, Lcom/amazon/ksdk/presets/BookFormatType;

    const/16 v9, 0x8

    const-string v10, "YJOP"

    invoke-direct {v0, v10, v9}, Lcom/amazon/ksdk/presets/BookFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->YJOP:Lcom/amazon/ksdk/presets/BookFormatType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/ksdk/presets/BookFormatType;

    .line 12
    sget-object v11, Lcom/amazon/ksdk/presets/BookFormatType;->INVALID:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->YJ:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->KF8:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->MOBI7:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->TOPAZ:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->LUNA:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->PDF:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/ksdk/presets/BookFormatType;->MOP:Lcom/amazon/ksdk/presets/BookFormatType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/ksdk/presets/BookFormatType;->$VALUES:[Lcom/amazon/ksdk/presets/BookFormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/BookFormatType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/BookFormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/BookFormatType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/BookFormatType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/BookFormatType;->$VALUES:[Lcom/amazon/ksdk/presets/BookFormatType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/BookFormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/BookFormatType;

    return-object v0
.end method
