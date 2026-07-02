.class public final enum Lcom/amazon/kindle/krx/viewoptions/DisplayState;
.super Ljava/lang/Enum;
.source "AaSetting.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/viewoptions/DisplayState;

.field public static final enum DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

.field public static final enum ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

.field public static final enum HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    const/4 v2, 0x0

    const-string v3, "ENABLED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    const/4 v2, 0x2

    const-string v3, "HIDDEN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->$VALUES:[Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->$VALUES:[Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/viewoptions/DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object v0
.end method
