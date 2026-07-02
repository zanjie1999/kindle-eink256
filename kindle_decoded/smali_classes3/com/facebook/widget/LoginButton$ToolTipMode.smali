.class public final enum Lcom/facebook/widget/LoginButton$ToolTipMode;
.super Ljava/lang/Enum;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolTipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/widget/LoginButton$ToolTipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/LoginButton$ToolTipMode;

.field public static final enum DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

.field public static final enum DISPLAY_ALWAYS:Lcom/facebook/widget/LoginButton$ToolTipMode;

.field public static final enum NEVER_DISPLAY:Lcom/facebook/widget/LoginButton$ToolTipMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    new-instance v0, Lcom/facebook/widget/LoginButton$ToolTipMode;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/facebook/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 72
    new-instance v0, Lcom/facebook/widget/LoginButton$ToolTipMode;

    const/4 v2, 0x1

    const-string v3, "DISPLAY_ALWAYS"

    invoke-direct {v0, v3, v2}, Lcom/facebook/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 77
    new-instance v0, Lcom/facebook/widget/LoginButton$ToolTipMode;

    const/4 v3, 0x2

    const-string v4, "NEVER_DISPLAY"

    invoke-direct {v0, v4, v3}, Lcom/facebook/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/widget/LoginButton$ToolTipMode;

    .line 62
    sget-object v5, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/widget/LoginButton$ToolTipMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/widget/LoginButton$ToolTipMode;->$VALUES:[Lcom/facebook/widget/LoginButton$ToolTipMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 62
    const-class v0, Lcom/facebook/widget/LoginButton$ToolTipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/LoginButton$ToolTipMode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 62
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->$VALUES:[Lcom/facebook/widget/LoginButton$ToolTipMode;

    invoke-virtual {v0}, [Lcom/facebook/widget/LoginButton$ToolTipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/LoginButton$ToolTipMode;

    return-object v0
.end method
