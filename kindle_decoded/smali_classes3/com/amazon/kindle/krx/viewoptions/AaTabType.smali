.class public final enum Lcom/amazon/kindle/krx/viewoptions/AaTabType;
.super Ljava/lang/Enum;
.source "AaTabType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum FONT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum GUIDED_VIEW_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum LAYOUT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum LETTERBOXING_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum MERGED_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

.field public static final enum THEMES_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x0

    const-string v3, "THEMES_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->THEMES_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x1

    const-string v3, "FONT_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->FONT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x2

    const-string v3, "LAYOUT_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LAYOUT_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x3

    const-string v3, "MORE_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x4

    const-string v3, "GUIDED_VIEW_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->GUIDED_VIEW_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x5

    const-string v3, "LETTERBOXING_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->LETTERBOXING_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    const/4 v2, 0x6

    const-string v3, "MERGED_TAB"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/viewoptions/AaTabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MERGED_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->$VALUES:[Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/viewoptions/AaTabType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/viewoptions/AaTabType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->$VALUES:[Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/viewoptions/AaTabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    return-object v0
.end method
