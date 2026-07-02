.class public final enum Lcom/amazon/kindle/krx/ui/ColorMode;
.super Ljava/lang/Enum;
.source "ColorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/ColorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/ColorMode;

.field public static final enum BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

.field public static final enum GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

.field public static final enum NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

.field public static final enum SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

.field public static final enum WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;


# instance fields
.field private isDark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v1, 0x0

    const-string v2, "WHITE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/krx/ui/ColorMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v2, 0x1

    const-string v3, "BLACK"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/krx/ui/ColorMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v3, 0x2

    const-string v4, "SEPIA"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kindle/krx/ui/ColorMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v4, 0x3

    const-string v5, "GREEN"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/kindle/krx/ui/ColorMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v5, 0x4

    const-string v6, "NIGHT"

    invoke-direct {v0, v6, v5, v2}, Lcom/amazon/kindle/krx/ui/ColorMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 9
    sget-object v7, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/ui/ColorMode;->$VALUES:[Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-boolean p3, p0, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->$VALUES:[Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/ColorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark:Z

    return v0
.end method
