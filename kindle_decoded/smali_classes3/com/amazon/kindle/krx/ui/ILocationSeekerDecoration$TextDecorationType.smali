.class public final enum Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;
.super Ljava/lang/Enum;
.source "ILocationSeekerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextDecorationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum BOTTOM_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum BOTTOM_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum BOTTOM_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum NLN_BOTTOM:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum NLN_TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

.field public static final enum UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 84
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v1, 0x0

    const-string v2, "UPPER_LEFT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 85
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v2, 0x1

    const-string v3, "UPPER_CENTER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 86
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v3, 0x2

    const-string v4, "UPPER_RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 87
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v4, 0x3

    const-string v5, "BOTTOM_LEFT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 88
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x4

    const-string v6, "BOTTOM_CENTER"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 89
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v6, 0x5

    const-string v7, "BOTTOM_RIGHT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 90
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v7, 0x6

    const-string v8, "NLN_TOP"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 91
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v8, 0x7

    const-string v9, "NLN_BOTTOM"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_BOTTOM:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    .line 82
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->$VALUES:[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;
    .locals 1

    .line 82
    const-class v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->$VALUES:[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    return-object v0
.end method
