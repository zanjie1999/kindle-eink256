.class public final enum Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_messaging/zzx;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum TOPIC:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;


# instance fields
.field private final number_:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->TOPIC:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    .line 1
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v1, 0x1

    const-string v2, "DATA_MESSAGE"

    .line 2
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v1, 0x2

    const-string v2, "TOPIC"

    .line 3
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->TOPIC:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v1, 0x3

    const-string v2, "DISPLAY_NOTIFICATION"

    .line 4
    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->$values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 1

    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 1
    invoke-virtual {v0}, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->number_:I

    return v0
.end method
