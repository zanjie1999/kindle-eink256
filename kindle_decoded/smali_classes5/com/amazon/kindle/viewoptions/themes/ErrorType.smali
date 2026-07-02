.class public final enum Lcom/amazon/kindle/viewoptions/themes/ErrorType;
.super Ljava/lang/Enum;
.source "AaThemeDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/themes/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/themes/ErrorType;

.field public static final enum AVAILABILITY:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

.field public static final enum GENERAL:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

.field public static final enum LENGTH:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

.field public static final enum NONE:Lcom/amazon/kindle/viewoptions/themes/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    const/4 v2, 0x0

    const-string v3, "AVAILABILITY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/themes/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->AVAILABILITY:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    const/4 v2, 0x1

    const-string v3, "LENGTH"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/themes/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->LENGTH:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    const/4 v2, 0x2

    const-string v3, "GENERAL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/themes/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->GENERAL:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    const/4 v2, 0x3

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/themes/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->NONE:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->$VALUES:[Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/themes/ErrorType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/themes/ErrorType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->$VALUES:[Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/themes/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    return-object v0
.end method
