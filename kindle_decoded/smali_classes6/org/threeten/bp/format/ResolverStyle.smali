.class public final enum Lorg/threeten/bp/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/format/ResolverStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/format/ResolverStyle;

.field public static final enum LENIENT:Lorg/threeten/bp/format/ResolverStyle;

.field public static final enum SMART:Lorg/threeten/bp/format/ResolverStyle;

.field public static final enum STRICT:Lorg/threeten/bp/format/ResolverStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    new-instance v0, Lorg/threeten/bp/format/ResolverStyle;

    const/4 v1, 0x0

    const-string v2, "STRICT"

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    .line 71
    new-instance v0, Lorg/threeten/bp/format/ResolverStyle;

    const/4 v2, 0x1

    const-string v3, "SMART"

    invoke-direct {v0, v3, v2}, Lorg/threeten/bp/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    .line 82
    new-instance v0, Lorg/threeten/bp/format/ResolverStyle;

    const/4 v3, 0x2

    const-string v4, "LENIENT"

    invoke-direct {v0, v4, v3}, Lorg/threeten/bp/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/threeten/bp/format/ResolverStyle;

    .line 45
    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    aput-object v5, v4, v1

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/threeten/bp/format/ResolverStyle;->$VALUES:[Lorg/threeten/bp/format/ResolverStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/ResolverStyle;
    .locals 1

    .line 45
    const-class v0, Lorg/threeten/bp/format/ResolverStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/format/ResolverStyle;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/format/ResolverStyle;
    .locals 1

    .line 45
    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->$VALUES:[Lorg/threeten/bp/format/ResolverStyle;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/ResolverStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/ResolverStyle;

    return-object v0
.end method
