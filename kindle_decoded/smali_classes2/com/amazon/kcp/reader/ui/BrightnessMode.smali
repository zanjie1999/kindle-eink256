.class public final enum Lcom/amazon/kcp/reader/ui/BrightnessMode;
.super Ljava/lang/Enum;
.source "BrightnessMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/BrightnessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/BrightnessMode;

.field public static final enum NOT_SET:Lcom/amazon/kcp/reader/ui/BrightnessMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

.field public static final enum USER_DEFINED:Lcom/amazon/kcp/reader/ui/BrightnessMode;


# instance fields
.field private serializationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;

    const/4 v1, 0x0

    const-string v2, "NOT_SET"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kcp/reader/ui/BrightnessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->NOT_SET:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;

    const/4 v2, 0x1

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kcp/reader/ui/BrightnessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    .line 27
    new-instance v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;

    const/4 v3, 0x2

    const-string v4, "USER_DEFINED"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kcp/reader/ui/BrightnessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->USER_DEFINED:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/ui/BrightnessMode;

    .line 8
    sget-object v5, Lcom/amazon/kcp/reader/ui/BrightnessMode;->NOT_SET:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/ui/BrightnessMode;->$VALUES:[Lcom/amazon/kcp/reader/ui/BrightnessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->serializationValue:I

    return-void
.end method

.method public static fromSerializationValue(I)Lcom/amazon/kcp/reader/ui/BrightnessMode;
    .locals 5

    .line 40
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->values()[Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    iget v4, v3, Lcom/amazon/kcp/reader/ui/BrightnessMode;->serializationValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->getDefault()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lcom/amazon/kcp/reader/ui/BrightnessMode;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/BrightnessMode;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/BrightnessMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/BrightnessMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->$VALUES:[Lcom/amazon/kcp/reader/ui/BrightnessMode;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/BrightnessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/BrightnessMode;

    return-object v0
.end method


# virtual methods
.method public serializationValue()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->serializationValue:I

    return v0
.end method
