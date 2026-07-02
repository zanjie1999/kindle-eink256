.class public final enum Lcom/amazon/ksdk/presets/LetterboxingType;
.super Ljava/lang/Enum;
.source "LetterboxingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/LetterboxingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/LetterboxingType;

.field public static final enum BLACK:Lcom/amazon/ksdk/presets/LetterboxingType;

.field public static final enum DEFAULT:Lcom/amazon/ksdk/presets/LetterboxingType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/LetterboxingType;

.field public static final enum NONE:Lcom/amazon/ksdk/presets/LetterboxingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/LetterboxingType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/LetterboxingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/LetterboxingType;->INVALID:Lcom/amazon/ksdk/presets/LetterboxingType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/LetterboxingType;

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/LetterboxingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/LetterboxingType;->NONE:Lcom/amazon/ksdk/presets/LetterboxingType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/LetterboxingType;

    const/4 v3, 0x2

    const-string v4, "DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/LetterboxingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/LetterboxingType;->DEFAULT:Lcom/amazon/ksdk/presets/LetterboxingType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/LetterboxingType;

    const/4 v4, 0x3

    const-string v5, "BLACK"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/LetterboxingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/LetterboxingType;->BLACK:Lcom/amazon/ksdk/presets/LetterboxingType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ksdk/presets/LetterboxingType;

    .line 12
    sget-object v6, Lcom/amazon/ksdk/presets/LetterboxingType;->INVALID:Lcom/amazon/ksdk/presets/LetterboxingType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ksdk/presets/LetterboxingType;->NONE:Lcom/amazon/ksdk/presets/LetterboxingType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ksdk/presets/LetterboxingType;->DEFAULT:Lcom/amazon/ksdk/presets/LetterboxingType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ksdk/presets/LetterboxingType;->$VALUES:[Lcom/amazon/ksdk/presets/LetterboxingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/LetterboxingType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/LetterboxingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/LetterboxingType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/LetterboxingType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/LetterboxingType;->$VALUES:[Lcom/amazon/ksdk/presets/LetterboxingType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/LetterboxingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/LetterboxingType;

    return-object v0
.end method
