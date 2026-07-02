.class public final enum Lcom/amazon/kindle/krx/ui/TextType;
.super Ljava/lang/Enum;
.source "TextType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/TextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/TextType;

.field public static final enum LONG:Lcom/amazon/kindle/krx/ui/TextType;

.field public static final enum SHORT:Lcom/amazon/kindle/krx/ui/TextType;

.field public static final enum VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/ui/TextType;

    const/4 v1, 0x0

    const-string v2, "SHORT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/ui/TextType;

    const/4 v2, 0x1

    const-string v3, "LONG"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/TextType;->LONG:Lcom/amazon/kindle/krx/ui/TextType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/ui/TextType;

    const/4 v3, 0x2

    const-string v4, "VERBOSE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/TextType;->VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/ui/TextType;

    .line 8
    sget-object v5, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/TextType;->LONG:Lcom/amazon/kindle/krx/ui/TextType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/ui/TextType;->$VALUES:[Lcom/amazon/kindle/krx/ui/TextType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/TextType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/ui/TextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/TextType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/TextType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/ui/TextType;->$VALUES:[Lcom/amazon/kindle/krx/ui/TextType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/TextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/TextType;

    return-object v0
.end method
