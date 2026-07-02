.class final enum Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;
.super Ljava/lang/Enum;
.source "ECJPAKEParticipant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field public static final enum INITIALIZED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field public static final enum KEY_CALCULATED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field public static final enum ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field public static final enum ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

.field public static final enum ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    const/4 v1, 0x0

    const-string v2, "INITIALIZED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->INITIALIZED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 28
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    const/4 v2, 0x1

    const-string v3, "ROUND_1_COMPLETE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 29
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    const/4 v3, 0x2

    const-string v4, "ROUND_2_COMPLETE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 30
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    const/4 v4, 0x3

    const-string v5, "KEY_CALCULATED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->KEY_CALCULATED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 31
    new-instance v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    const/4 v5, 0x4

    const-string v6, "ROUND_3_COMPLETE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_3_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    .line 26
    sget-object v7, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->INITIALIZED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_1_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->ROUND_2_COMPLETE:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->KEY_CALCULATED:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->$VALUES:[Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->$VALUES:[Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    invoke-virtual {v0}, [Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant$State;

    return-object v0
.end method
