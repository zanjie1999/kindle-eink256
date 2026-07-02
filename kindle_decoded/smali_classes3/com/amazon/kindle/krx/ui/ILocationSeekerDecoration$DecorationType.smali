.class public final enum Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;
.super Ljava/lang/Enum;
.source "ILocationSeekerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecorationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

.field public static final enum ADDITIONAL_CONTROL:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

.field public static final enum LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

.field public static final enum RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

.field public static final enum TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    .line 43
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    const/4 v3, 0x2

    const-string v4, "TOP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    .line 54
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    const/4 v4, 0x3

    const-string v5, "ADDITIONAL_CONTROL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->ADDITIONAL_CONTROL:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    .line 33
    sget-object v6, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->$VALUES:[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->$VALUES:[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    return-object v0
.end method
