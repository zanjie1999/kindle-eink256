.class public final enum Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;
.super Ljava/lang/Enum;
.source "AaThemeDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

.field public static final enum EDIT:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

.field public static final enum SAVE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    const/4 v2, 0x0

    const-string v3, "SAVE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->SAVE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    const/4 v2, 0x1

    const-string v3, "EDIT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->EDIT:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->$VALUES:[Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->$VALUES:[Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    return-object v0
.end method
