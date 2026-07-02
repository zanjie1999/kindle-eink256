.class public final enum Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;
.super Ljava/lang/Enum;
.source "LayeredSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

.field public static final enum DRAW:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

.field public static final enum HIDDEN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

.field public static final enum PRESSED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

.field public static final enum SHOWN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

.field public static final enum SNAPPED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 522
    new-instance v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "SHOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->SHOWN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    .line 523
    new-instance v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "DRAW"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->DRAW:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    .line 524
    new-instance v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "HIDDEN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->HIDDEN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    .line 525
    new-instance v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "PRESSED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->PRESSED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    .line 526
    new-instance v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    const/4 v5, 0x4

    const-string v6, "SNAPPED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->SNAPPED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    .line 521
    sget-object v7, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->SHOWN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->DRAW:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->HIDDEN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->PRESSED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->$VALUES:[Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 521
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;
    .locals 1

    .line 521
    const-class v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;
    .locals 1

    .line 521
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->$VALUES:[Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    return-object v0
.end method
