.class public final enum Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;
.super Ljava/lang/Enum;
.source "AaDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

.field public static final enum BASIC:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

.field public static final enum CUSTOM:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    const/4 v2, 0x0

    const-string v3, "BASIC"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->BASIC:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    const/4 v2, 0x1

    const-string v3, "CUSTOM"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->$VALUES:[Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->$VALUES:[Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    return-object v0
.end method
