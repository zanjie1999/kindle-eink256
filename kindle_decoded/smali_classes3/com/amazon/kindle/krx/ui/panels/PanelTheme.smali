.class public final enum Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
.super Ljava/lang/Enum;
.source "PanelTheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/panels/PanelTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

.field public static final enum DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

.field public static final enum HEADER1:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

.field public static final enum HEADER2:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

.field public static final enum MESSAGE:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    const/4 v1, 0x0

    const-string v2, "HEADER1"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->HEADER1:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    const/4 v2, 0x1

    const-string v3, "HEADER2"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->HEADER2:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    const/4 v3, 0x2

    const-string v4, "DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    const/4 v4, 0x3

    const-string v5, "MESSAGE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->MESSAGE:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    .line 8
    sget-object v6, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->HEADER1:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->HEADER2:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->$VALUES:[Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->$VALUES:[Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method
