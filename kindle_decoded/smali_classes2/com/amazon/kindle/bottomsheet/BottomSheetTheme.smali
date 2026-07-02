.class public final enum Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;
.super Ljava/lang/Enum;
.source "BottomSheetTheme.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

.field public static final enum DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

.field public static final enum LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    new-instance v1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    const/4 v2, 0x0

    const-string v3, "LIGHT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    const/4 v2, 0x1

    const-string v3, "DARK"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->$VALUES:[Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;
    .locals 1

    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->$VALUES:[Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    invoke-virtual {v0}, [Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    return-object v0
.end method
