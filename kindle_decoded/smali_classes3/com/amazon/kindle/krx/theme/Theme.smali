.class public final enum Lcom/amazon/kindle/krx/theme/Theme;
.super Ljava/lang/Enum;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/theme/Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/theme/Theme;

.field public static final enum DARK:Lcom/amazon/kindle/krx/theme/Theme;

.field public static final enum LIGHT:Lcom/amazon/kindle/krx/theme/Theme;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/theme/Theme;

    const/4 v1, 0x0

    const-string v2, "LIGHT"

    const-string v3, "Light"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/krx/theme/Theme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/theme/Theme;

    const/4 v2, 0x1

    const-string v3, "DARK"

    const-string v4, "Dark"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/krx/theme/Theme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/theme/Theme;

    .line 8
    sget-object v4, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/theme/Theme;->$VALUES:[Lcom/amazon/kindle/krx/theme/Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/amazon/kindle/krx/theme/Theme;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/theme/Theme;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/theme/Theme;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/theme/Theme;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->$VALUES:[Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/theme/Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/krx/theme/Theme;->displayName:Ljava/lang/String;

    return-object v0
.end method
