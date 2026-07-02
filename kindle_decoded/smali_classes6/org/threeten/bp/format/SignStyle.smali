.class public final enum Lorg/threeten/bp/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/format/SignStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/format/SignStyle;

.field public static final enum ALWAYS:Lorg/threeten/bp/format/SignStyle;

.field public static final enum EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

.field public static final enum NEVER:Lorg/threeten/bp/format/SignStyle;

.field public static final enum NORMAL:Lorg/threeten/bp/format/SignStyle;

.field public static final enum NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Lorg/threeten/bp/format/SignStyle;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    .line 60
    new-instance v0, Lorg/threeten/bp/format/SignStyle;

    const/4 v2, 0x1

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v2}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->ALWAYS:Lorg/threeten/bp/format/SignStyle;

    .line 67
    new-instance v0, Lorg/threeten/bp/format/SignStyle;

    const/4 v3, 0x2

    const-string v4, "NEVER"

    invoke-direct {v0, v4, v3}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->NEVER:Lorg/threeten/bp/format/SignStyle;

    .line 74
    new-instance v0, Lorg/threeten/bp/format/SignStyle;

    const/4 v4, 0x3

    const-string v5, "NOT_NEGATIVE"

    invoke-direct {v0, v5, v4}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    .line 83
    new-instance v0, Lorg/threeten/bp/format/SignStyle;

    const/4 v5, 0x4

    const-string v6, "EXCEEDS_PAD"

    invoke-direct {v0, v6, v5}, Lorg/threeten/bp/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    const/4 v6, 0x5

    new-array v6, v6, [Lorg/threeten/bp/format/SignStyle;

    .line 44
    sget-object v7, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    aput-object v7, v6, v1

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->ALWAYS:Lorg/threeten/bp/format/SignStyle;

    aput-object v1, v6, v2

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NEVER:Lorg/threeten/bp/format/SignStyle;

    aput-object v1, v6, v3

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lorg/threeten/bp/format/SignStyle;->$VALUES:[Lorg/threeten/bp/format/SignStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/SignStyle;
    .locals 1

    .line 44
    const-class v0, Lorg/threeten/bp/format/SignStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/format/SignStyle;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/format/SignStyle;
    .locals 1

    .line 44
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->$VALUES:[Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/SignStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/SignStyle;

    return-object v0
.end method
