.class public final enum Lcom/audible/playersdk/headset/HeadsetPolicy$State;
.super Ljava/lang/Enum;
.source "HeadsetPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/playersdk/headset/HeadsetPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/playersdk/headset/HeadsetPolicy$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/playersdk/headset/HeadsetPolicy$State;

.field public static final Companion:Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;

.field public static final enum PLUGGED_WITHOUT_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

.field public static final enum PLUGGED_WITH_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

.field public static final enum UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    new-instance v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    const/4 v2, 0x0

    const-string v3, "UNPLUGGED"

    .line 22
    invoke-direct {v1, v3, v2, v2}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    const/4 v2, 0x1

    const-string v3, "PLUGGED_WITH_MICROPHONE"

    .line 26
    invoke-direct {v1, v3, v2, v2}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITH_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    const/4 v2, 0x2

    const-string v3, "PLUGGED_WITHOUT_MICROPHONE"

    .line 32
    invoke-direct {v1, v3, v2, v2}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITHOUT_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->$VALUES:[Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    new-instance v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->Companion:Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->value:I

    return-void
.end method

.method public static final fromValue(ILcom/audible/playersdk/headset/HeadsetPolicy$State;)Lcom/audible/playersdk/headset/HeadsetPolicy$State;
    .locals 1

    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->Companion:Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;->fromValue(ILcom/audible/playersdk/headset/HeadsetPolicy$State;)Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/playersdk/headset/HeadsetPolicy$State;
    .locals 1

    const-class v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    return-object p0
.end method

.method public static values()[Lcom/audible/playersdk/headset/HeadsetPolicy$State;
    .locals 1

    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->$VALUES:[Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    invoke-virtual {v0}, [Lcom/audible/playersdk/headset/HeadsetPolicy$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->value:I

    return v0
.end method
